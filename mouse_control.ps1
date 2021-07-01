Add-Type -AssemblyName System.Windows.Forms;
$screen = [System.Windows.Forms.SystemInformation]::VirtualScreen;
# screen width
$screen.width;
# screen height
$screen.height;
