"""One-shot H2 schema conversion. Generates clean, working schema from MySQL DDL."""
import re, sys

TYPE_MAP = {
    'tinyint': 'smallint', 'bit(1)': 'boolean',
    'text': 'clob', 'datetime': 'timestamp'
}

def fix_table(table_sql):
    """Convert a single CREATE TABLE statement from MySQL to H2."""
    # Remove backticks
    s = table_sql.replace('`', '')
    # Type conversions
    for k, v in TYPE_MAP.items():
        s = re.sub(r'\b' + re.escape(k) + r'\b', v, s)
    # Remove MySQL-specific syntax
    s = re.sub(r'CHARACTER SET \w+', '', s)
    s = re.sub(r'COLLATE \w+', '', s)
    s = re.sub(r'USING BTREE', '', s)
    s = re.sub(r"COMMENT\s+'[^']*'", '', s)
    s = re.sub(r'ON UPDATE CURRENT_TIMESTAMP\(\d+\)', '', s)
    s = re.sub(r'DEFAULT_GENERATED', '', s)
    s = re.sub(r'bigint NOT NULL AUTO_INCREMENT', 'bigint AUTO_INCREMENT', s)
    s = re.sub(r"b'0'", 'FALSE', s)
    s = re.sub(r"b'1'", 'TRUE', s)
    s = re.sub(r'\bint\b', 'integer', s)  # int→integer for H2 compatibility

    # Remove all inline INDEX/KEY clauses
    s = re.sub(r',\s*(INDEX|KEY)\s+\w+\s*\([^)]*\)', '', s)

    # Remove table options after )
    s = re.sub(r'\)\s*AUTO_INCREMENT\s*=\s*\d+', ')', s)
    s = re.sub(r'\)\s*ENGINE\s*=\s*\w+.*?(?=;|\n)', ')', s)
    s = re.sub(r'\)\s*CHARACTER SET \w+ COLLATE \w+', ')', s)
    s = re.sub(r'\)\s*ROW_FORMAT\s*=\s*\w+', ')', s)

    # Clean up: trailing comma before ), double commas
    s = re.sub(r',\s*\)', ')', s)
    s = re.sub(r',\s*,', ',', s)

    # Ensure proper ; ending
    s = s.rstrip()
    if not s.endswith(';'):
        s += ';'
    return s

def convert(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8', errors='replace') as f:
        raw = f.read()

    # Remove multi-line comments
    raw = re.sub(r'/\*.*?\*/', '', raw, flags=re.DOTALL)

    # Split into individual SQL statements
    stmts = re.split(r';\s*\r?\n', raw)

    tables = []
    seen = set()
    for stmt in stmts:
        stmt = stmt.strip()
        upper = stmt.upper()
        # Keep only DDL
        if 'CREATE TABLE' not in upper:
            continue
        # Check for DROP TABLE before this CREATE
        # Extract table name
        m = re.search(r'CREATE TABLE\s+`?(\w+)`?', stmt, re.IGNORECASE)
        if not m:
            continue
        table_name = m.group(1)
        if table_name in seen:
            continue
        seen.add(table_name)

        # Find the matching DROP TABLE
        drop_stmt = f'DROP TABLE IF EXISTS {table_name};'

        # Fix the CREATE TABLE
        fixed = fix_table(stmt)
        fixed = fixed.replace('\x00', '')  # Remove NUL bytes
        tables.append(drop_stmt + '\n' + fixed)

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n\n'.join(tables) + '\n')

    print(f'Converted {len(tables)} tables: {input_file} -> {output_file}')

if __name__ == '__main__':
    if len(sys.argv) < 3:
        print('Usage: python final_h2.py <input.sql> <output.sql>')
        sys.exit(1)
    convert(sys.argv[1], sys.argv[2])
