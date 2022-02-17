$Packages = 'dotnet-5.0-runtime', 'ds4windows', 'brave', 'git-fork', 'adobereader', '7zip.install', 'notepadplusplus.install', 'vlc', 'git.install', 'python3', 'nodejs.install', 'python2', 'putty.install', 'vscode', 'winscp.install', 'discord', 'parsec', 'sharex', 'everything', 'teracopy', 'deluge', 't-clock', 'linkshellextension'

Function InstallPackages {
    ForEach($Package in $Packages) 
    {
        choco install $Package -y -r
    }
}

$ChocoInstalled = $false
If (Get-Command choco.exe -ErrorAction SilentlyContinue) 
{
    $ChocoInstalled = $true
}

If ($ChocoInstalled)
{
    InstallPackages
} 
Else {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    InstallPackages
}
