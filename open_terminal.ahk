; This script runs an app installed from the Microsoft Store
#Requires AutoHotkey v2.0

^t::SoundBeep(1500), runApp('Terminal')

runApp(appName) {
 For app in ComObject('Shell.Application').NameSpace('shell:AppsFolder').Items
  (app.Name = appName) && RunWait('explorer shell:appsFolder\' app.Path)
}
