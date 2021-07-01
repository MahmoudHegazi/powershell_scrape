$WSH = New-Object -Com WScript.Shell
start chrome /incognito https://www.google.com;
$WSH.AppActivate("chrome");
$WSH.SendKeys("^+j");
# Get-Random -Minimum 1 -Maximum 5
Start-sleep -s 3
# 31 tab in my case
For ($i=0; $i -lt 31; $i++) { echo $WSH.SendKeys({TAB}); start-sleep -Seconds 10;  }
$WSH.SendKeys("alert{(}hello world{)};~");
