#start up processes ps1 file

Start-Process "notepad++.exe"
Start-Sleep -Seconds 3

Start-Process "Code.exe"
Start-Sleep -Seconds 5

Start-Process "firefox.exe"
Start-Sleep -Seconds 4
Start-Process "brave.exe"
Start-Sleep -Seconds 4
Start-Process "opera.exe"
Start-Sleep -Seconds 4
Start-Process "discord.exe"
Start-Sleep -Seconds 4
Start-Process "slack.exe"
Start-Sleep -Seconds 4
Start-Process "WindowsTerminal.exe"
Start-Sleep -Seconds 4


# Close applications
# need to close the window not the app -> "OpenHardwareMonitor"
$processesToClose = @("MicrosoftEdge", "DCv2", "RuntimeBroker")
foreach ($process in $processesToClose) {
    Get-Process -Name $process -ErrorAction SilentlyContinue | Stop-Process -Force
}
