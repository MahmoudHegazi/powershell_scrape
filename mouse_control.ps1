Add-Type -AssemblyName System.Windows.Forms;
$screen = [System.Windows.Forms.SystemInformation]::VirtualScreen;
# screen width
$screen.width;
# screen height
$screen.height;
# move cursor into center
[Windows.Forms.Cursor]::Position = "$($screen.Width - $screen.Width / 2),$($screen.Height - $screen.Height / 2)";
# clear console
$WSH.AppActivate('chrome'); Start-sleep -Seconds 1; $WSH.SendKeys("^+j"); Start-sleep -s 2; $WSH.SendKeys("^l");
# read js file 
$myjs = "C://Users/user/app.js"; Get-Content -Path $myjs;
