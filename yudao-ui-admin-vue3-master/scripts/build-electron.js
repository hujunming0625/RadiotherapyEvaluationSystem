/**
 * 前端 Electron 打包脚本（纯前端，连接远程服务器）
 *
 * 流程：
 * 1. Vite 构建前端
 * 2. 运行 electron-builder 生成 .exe
 */

const { execSync } = require('child_process')
const fs = require('fs')
const path = require('path')

const ROOT = path.resolve(__dirname, '..')

function run(cmd, cwd) {
  console.log(`\n>>> ${cmd}`)
  console.log(`    cwd: ${cwd || process.cwd()}\n`)
  execSync(cmd, { cwd: cwd || ROOT, stdio: 'inherit' })
}

// ============================================
// Step 1: 构建前端
// ============================================
console.log('\n========================================')
console.log('Step 1: 构建前端')
console.log('========================================')

run('pnpm build:desktop')

// ============================================
// Step 2: 运行 electron-builder
// ============================================
console.log('\n========================================')
console.log('Step 2: 打包 Electron 安装程序')
console.log('========================================')

run('npx electron-builder')

console.log('\n========================================')
console.log('打包完成！')
console.log('========================================')

const releaseDir = path.join(ROOT, 'release')
const files = fs.readdirSync(releaseDir).filter(f => f.endsWith('.exe'))
if (files.length > 0) {
  console.log(`\n安装包: ${path.join(releaseDir, files[files.length - 1])}`)
}
