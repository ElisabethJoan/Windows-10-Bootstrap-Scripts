$Packages = '7zip', 'git', 'openssh', 'powertoys', 'notepadplusplus', 'teracopy-np', 'terraform', 'obsidian', 'neovim', 'postman'
Function InstallPackages
{
  ForEach($Package in $Packages) 
  {
    scoop install $Package
  }
}

If (!(Get-Command scoop -ErrorAction SilentlyContinue))
{
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
  Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}
Else 
{
  scoop bucket add extras
  scoop bucket add nonportable
  InstallPackages
}
