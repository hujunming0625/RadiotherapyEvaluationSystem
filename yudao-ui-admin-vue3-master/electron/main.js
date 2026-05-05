const { app, BrowserWindow } = require('electron')
const path = require('path')

let mainWindow = null

// 获取 asar 内的资源路径
function getAppResourcePath(relativePath) {
  if (app.isPackaged) {
    return path.join(app.getAppPath(), relativePath)
  }
  return path.join(__dirname, '..', relativePath)
}

// 创建主窗口
function createMainWindow() {
  mainWindow = new BrowserWindow({
    width: 1400,
    height: 900,
    minWidth: 1024,
    minHeight: 768,
    title: '放疗效果综合评估系统',
    webPreferences: {
      preload: path.join(__dirname, 'preload.js'),
      contextIsolation: true,
      nodeIntegration: false
    }
  })

  // 加载本地前端页面
  const indexPath = getAppResourcePath('dist-desktop/index.html')
  console.log('Loading frontend:', indexPath)
  mainWindow.loadFile(indexPath)

  mainWindow.on('closed', () => {
    mainWindow = null
  })
}

// 应用启动
app.whenReady().then(() => {
  createMainWindow()

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
      createMainWindow()
    }
  })
})

// 应用关闭
app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit()
  }
})
