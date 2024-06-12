$Packages = 'Mozilla.Firefox', 'Notepad++.Notepad++', 'Git.Git', 'AutoHotkey.AutoHotkey', 'Microsoft.PowerToys', 'OpenJS.NodeJS', 'PuTTY.PuTTY', 'ShareX.ShareX', 'Python.Python.3.11', 'CodeSector.TeraCopy', 'voidtools.Everything'

Function InstallPackages
{
  ForEach($Package in $Packages) 
  {
    winget install -e --id $Package
  }
}

If (!(Get-Command scoop -ErrorAction SilentlyContinue))
{
  Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
}
Else 
{
  InstallPackages
}
