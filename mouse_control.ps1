Add-Type -AssemblyName System.Windows.Forms;
$screen = [System.Windows.Forms.SystemInformation]::VirtualScreen;
# screen width
$screen.width;
# screen height
$screen.height;
# move cursor into center
[Windows.Forms.Cursor]::Position = "$($screen.Width - $screen.Width / 2),$($screen.Height - $screen.Height / 2)";
