"""Complete MySQL-to-H2 schema converter. Single pass, handles all known issues."""
import re, sys

def convert(input_path, output_path):
    with open(input_path, 'r', encoding='utf-8') as f:
        raw = f.read()

    # Step 1: Extract only CREATE TABLE + DROP TABLE blocks. Ignore INSERTs, comments, BEGIN/COMMIT
    # Split on semicolons
    statements = []
    for stmt in re.split(r';\s*\n', raw):
        stmt = stmt.strip()
        if not stmt:
            continue
        # Keep only DDL
        upper = stmt.upper()
        if not ('CREATE TABLE' in upper or 'DROP TABLE' in upper):
            continue
        statements.append(stmt)

    content = ';\n\n'.join(statements) + ';\n'

    # Step 2: Remove multi-line comments
    content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)

    # Step 3: Remove backticks
    content = content.replace('`', '')

    # Step 4: Type conversions
    content = re.sub(r'\btinyint\b', 'smallint', content, flags=re.IGNORECASE)
    content = re.sub(r'\bbit\(1\)\b', 'boolean', content, flags=re.IGNORECASE)
    content = re.sub(r'\btext\b', 'clob', content, flags=re.IGNORECASE)
    content = re.sub(r'\bdatetime\b', 'timestamp', content, flags=re.IGNORECASE)
    content = re.sub(r"b'0'", 'FALSE', content)
    content = re.sub(r"b'1'", 'TRUE', content)

    # Step 5: Remove MySQL column attributes
    content = re.sub(r'CHARACTER SET \w+', '', content)
    content = re.sub(r'COLLATE \w+', '', content)
    content = re.sub(r'USING BTREE', '', content)
    content = re.sub(r"COMMENT\s+'[^']*'", '', content)
    content = re.sub(r'ON UPDATE CURRENT_TIMESTAMP\(\d+\)', '', content)
    content = re.sub(r'DEFAULT_GENERATED', '', content)

    # Step 6: Fix AUTO_INCREMENT
    content = re.sub(r'bigint NOT NULL AUTO_INCREMENT', 'bigint AUTO_INCREMENT', content)

    # Step 7: Remove inline INDEX/KEY clauses within CREATE TABLE
    # Process each CREATE TABLE individually
    def clean_table(m):
        body = m.group(1)
        close = m.group(2)
        # Remove INDEX/KEY clauses (may span lines, use DOTALL)
        body = re.sub(r',\s*(INDEX|KEY)\s+\w+\s*\([^)]*\)', '', body, flags=re.DOTALL)
        # Remove trailing comma before closing paren (comma then optional newline+whitespace then ))
        body = re.sub(r',\s*\)', ')', body)
        # Remove extra blank lines
        body = re.sub(r'\n\s*\n\s*\n+', '\n', body)
        return body + close

    content = re.sub(r'(CREATE TABLE \w+\s*\(.*?)(\))', clean_table, content, flags=re.DOTALL)

    # Step 8: Remove trailing table options (ENGINE=, AUTO_INCREMENT=, CHARSET, etc.)
    # These come after the closing ) in MySQL
    content = re.sub(r'\)\s*AUTO_INCREMENT\s*=\s*\d+', ')', content)
    content = re.sub(r'\)\s*ENGINE\s*=\s*\w+\s*DEFAULT CHARSET\s*=\s*\w+', ')', content)
    content = re.sub(r'\)\s*ENGINE\s*=\s*\w+', ')', content)
    content = re.sub(r'\)\s*CHARACTER SET \w+ COLLATE \w+', ')', content)
    content = re.sub(r'\)\s*ROW_FORMAT\s*=\s*\w+', ')', content)

    # Step 9: Clean double commas, trailing comma before close
    content = re.sub(r',\s*,', ',', content)
    content = re.sub(r',\s*\)', ')', content)

    # Step 10: Clean blank lines
    content = re.sub(r'\n\s*\n\s*\n+', '\n\n', content)

    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(content)

    n = content.count('DROP TABLE IF EXISTS')
    print(f'Converted {n} tables: {input_path} -> {output_path}')

if __name__ == '__main__':
    if len(sys.argv) < 3:
        print('Usage: python clean_h2_schema.py <input.sql> <output.sql>')
        sys.exit(1)
    convert(sys.argv[1], sys.argv[2])
