const fs = require('fs');
const path = require('path');

const INPUT = path.resolve(__dirname, '../sql/mysql/ruoyi-vue-pro.sql');
const OUTPUT = path.resolve(__dirname, '../yudao-server/src/main/resources/sql/h2-data.sql');

// Read source
const src = fs.readFileSync(INPUT, 'utf-8');

// Extract INSERT statements (each is a single line in this dump)
const insertLines = src.split(/\r?\n/).filter(line => /^INSERT\s+INTO/i.test(line.trim()));

// Convert MySQL -> H2
function convert(line) {
  let s = line;
  // Remove backticks
  s = s.replace(/`/g, '');
  // b'0' -> FALSE, b'1' -> TRUE
  s = s.replace(/\bb'0'/g, 'FALSE');
  s = s.replace(/\bb'1'/g, 'TRUE');
  return s;
}

// Group by table name
const groups = new Map();
for (const line of insertLines) {
  const converted = convert(line);
  // Extract table name: INSERT INTO table_name
  const m = converted.match(/^INSERT\s+INTO\s+(\S+)/i);
  if (!m) continue;
  const table = m[1];
  if (!groups.has(table)) groups.set(table, []);
  groups.get(table).push(converted);
}

// Sort table names alphabetically
const sortedTables = [...groups.keys()].sort();

// Build output
const parts = [
  '-- =============================================================================',
  '-- H2 数据初始化脚本（由 convert-mysql-to-h2-data.js 自动生成，请勿手动编辑）',
  '-- =============================================================================',
  '',
];

for (const table of sortedTables) {
  parts.push(`-- ===================== ${table} =====================`);
  for (const stmt of groups.get(table)) {
    parts.push(stmt);
  }
  parts.push('');
}

// Ensure trailing newline
const output = parts.join('\n') + '\n';

fs.writeFileSync(OUTPUT, output, 'utf-8');

console.log(`Done. ${insertLines.length} INSERT statements from ${sortedTables.length} tables written to:`);
console.log(`  ${OUTPUT}`);
