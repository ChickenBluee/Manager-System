const { app, BrowserWindow } = require('electron/main')

const createWindow = () => {
  const win = new BrowserWindow({
    width: 1280,
    height: 720,
    resizable: false,
    maximizable: false,
    titleBarStyle: 'hidden',
    titleBarOverlay: {
      color: '#FFFFFF00',
      symbolColor: '#FFFFFF',
      height: 29,
    },
  
    webPreferences: {
      nodeIntegrationInWorker: true,
      webSecurity: false,
      allowRunningInsecureContent: true, 
    }
  })
  win.loadFile('src/html/login.html')
}

app.whenReady().then(() => {
  createWindow()

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
      createWindow()
    }
  })
})

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit()
  }
})
