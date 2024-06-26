﻿$Packages = '7zip.install', 'notepadplusplus.install', 'git.install', 'autohotkey', 'firefox' 'python', 'nodejs.install', 'putty.install', 'vscode', 'sharex', 'everything', 'teracopy', 't-clock', 'linkshellextension', 'powertoys'

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
