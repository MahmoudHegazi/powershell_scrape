<#
# $url = 'https://www.google.com';
# [System.Diagnostics.Process]::Start("chrome.exe","--incognito $url")
$WSH = New-Object -Com WScript.Shell
# Start("chrome.exe")
start chrome https://www.google.com;
$WSH.AppActivate("chrome");
$WSH.SendKeys("^+j");
# Get-Random -Minimum 1 -Maximum 5
Start-sleep -s 3
# 31 tab in my case
For ($i=0; $i -lt 31; $i++) { $WSH.SendKeys({TAB}); start-sleep -Seconds 1;  }
$WSH.SendKeys("alert{(}hello world{)};~");
#>

start chrome https://www.google.com; start-sleep -Seconds 2;
$WSH.AppActivate("chrome");
start-sleep -Seconds 2;
$WSH.SendKeys("^+j");
start-sleep -Seconds 2;
# this number depend on how many tabs needed to reach the console static for now
For ($i=0; $i -lt 53; $i++) { start-sleep -Seconds 1; $WSH.SendKeys("{TAB}"); };

