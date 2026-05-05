const { ipcRenderer, contextBridge } = require('electron')

contextBridge.exposeInMainWorld('electronAPI', {
  onLoadingStatus: (callback) => ipcRenderer.on('loading-status', (event, msg) => callback(msg))
})
