#!/usr/bin/env python3
"""Complete MySQL → H2 DDL converter. Handles all known issues in one pass."""
import re, sys

def convert(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()

    # 1. Remove backticks
    content = content.replace('`', '')

    # 2. Remove SET FOREIGN_KEY_CHECKS
    content = re.sub(r'SET FOREIGN_KEY_CHECKS\s*=\s*\d+;', '', content)
    content = re.sub(r'SET NAMES \w+;', '', content)

    # 3. Remove Navicat comments
    content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)

    # 4. Remove ENGINE, AUTO_INCREMENT=, ROW_FORMAT, CHARSET options from end of CREATE
    # IMPORTANT: no DOTALL flag — only match on the same line
    content = re.sub(r'\)\s*ENGINE\s*=\s*\w+[^)]*;', ');', content)
    content = re.sub(r'\)\s*AUTO_INCREMENT\s*=\s*\d+[^)]*;', ');', content)

    # 5. Within CREATE TABLE, fix data types
    content = re.sub(r'\btinyint\b', 'smallint', content, flags=re.IGNORECASE)
    content = re.sub(r'\bbit\(1\)\b', 'boolean', content, flags=re.IGNORECASE)
    content = re.sub(r'\btext\b', 'clob', content, flags=re.IGNORECASE)
    content = re.sub(r'\bdatetime\b', 'timestamp', content, flags=re.IGNORECASE)

    # 6. Remove CHARACTER SET and COLLATE from column definitions
    content = re.sub(r'CHARACTER SET \w+', '', content)
    content = re.sub(r'COLLATE \w+', '', content)

    # 7. Remove USING BTREE
    content = re.sub(r'USING BTREE', '', content)

    # 8. Remove ON UPDATE CURRENT_TIMESTAMP(6)
    content = re.sub(r'ON UPDATE CURRENT_TIMESTAMP(\(\d+\))?', '', content)

    # 9. Remove DEFAULT_GENERATED
    content = re.sub(r'DEFAULT_GENERATED', '', content)

    # 10. Fix AUTO_INCREMENT syntax: bigint NOT NULL AUTO_INCREMENT → bigint AUTO_INCREMENT
    content = re.sub(r'bigint NOT NULL AUTO_INCREMENT', 'bigint AUTO_INCREMENT', content)

    # 11. Remove COMMENT 'xxx' (H2 does not support inline column comments)
    content = re.sub(r"\s+COMMENT\s+'[^']*'", '', content)

    # 12. Fix b'0'/b'1' → FALSE/TRUE
    content = re.sub(r"b'0'", 'FALSE', content)
    content = re.sub(r"b'1'", 'TRUE', content)

    # 12. Remove all INDEX clauses inside CREATE TABLE (keep PRIMARY KEY, UNIQUE KEY)
    # Match: INDEX idx_name(col1 ASC, col2 DESC) or INDEX idx_name(col)
    def remove_indexes(match):
        before = match.group(1)
        after = match.group(2)
        # Remove INDEX/KEY clauses (but not PRIMARY KEY or UNIQUE KEY or FOREIGN KEY)
        cleaned = re.sub(r',\s*(INDEX|KEY)\s+\w+\s*\([^)]*\)', '', before)
        # Also remove trailing comma before closing paren
        cleaned = re.sub(r',\s*\)', ')', cleaned)
        return cleaned + after

    # Process each CREATE TABLE individually
    pattern = r'(CREATE TABLE \w+\s*\(.*?)(\))'
    content = re.sub(pattern, remove_indexes, content, flags=re.DOTALL)

    # 13. Clean up multiple consecutive commas inside CREATE TABLE
    def clean_commas(match):
        body = match.group(1)
        body = re.sub(r',\s*,', ',', body)  # double commas
        body = re.sub(r',\s*\)', ')', body)   # trailing comma before close
        return body + match.group(2)
    content = re.sub(r'(CREATE TABLE \w+\s*\(.*?)(\))', clean_commas, content, flags=re.DOTALL)

    # 14. Remove trailing whitespace lines
    content = re.sub(r'\n\s*\n\s*\n+', '\n\n', content)

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(content)

    # Count tables
    n = content.count('DROP TABLE IF EXISTS')
    print(f'Converted {n} tables: {input_file} → {output_file}')

if __name__ == '__main__':
    import sys
    infile = sys.argv[1] if len(sys.argv) > 1 else 'mysql/ruoyi-vue-pro.sql'
    outfile = sys.argv[2] if len(sys.argv) > 2 else 'h2/h2-schema.sql'
    convert(infile, outfile)
