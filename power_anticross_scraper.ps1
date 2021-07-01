# $url = 'https://www.google.com';
# [System.Diagnostics.Process]::Start("chrome.exe","--incognito $url")
$WSH = New-Object -Com WScript.Shell
Start("chrome.exe")
start chrome https://www.google.com;
$WSH.AppActivate("chrome");
$WSH.SendKeys("^+j");
# Get-Random -Minimum 1 -Maximum 5
Start-sleep -s 3
# 31 tab in my case
For ($i=0; $i -lt 31; $i++) { echo $WSH.SendKeys({TAB}); start-sleep -Seconds 1;  }
$WSH.SendKeys("alert{(}hello world{)};~");
