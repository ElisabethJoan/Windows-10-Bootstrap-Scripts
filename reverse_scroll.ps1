# mouse inversion
$mode = Read-host "How do you like your mouse scroll (0: Normal or 1: Inverted)?"; Get-PnpDevice -Class Mouse -PresentOnly -Status OK | ForEach-Object { "$($_.Name): $($_.DeviceID)"; Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\$($_.DeviceID)\Device Parameters" -Name FlipFlopWheel -Value $mode; "+--- Value of FlipFlopWheel is set to " + (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\$($_.DeviceID)\Device Parameters").FlipFlopWheel + "`n" }
# taskbar size
# $RegistryPath 	= 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
# $Name 			= 'TaskbarSi'
# $Value 			= Read-host "How large would you like your taskbar? (2: Large, 1: Medium, or 0: Small)?"
# If (-NOT (Test-Path $RegistryPath)) {
# 	New-Item -Path $RegistryPath -Force | Out-Null
# }
# New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force
# taskbar location
# $RegistryPath 	= 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3'
# $Name 			= 'Settings'
# $Value 			= Read-host "Where would you like the taskbar positioned? (3: Bottom or 1: Top)?"
# If (-NOT (Test-Path $RegistryPath)) {
#	New-Item -Path $RegistryPath -Force | Out-Null
# }
# New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force
# $Test = Get-ItemPropertyValue -Path $RegistryPath -Name $Name
# Write-Host $Test