$WSH = New-Object -Com WScript.Shell
start chrome 'https://api.nasdaq.com/api/screener/stocks?tableonly=true&limit=25&offset=0&download=true';
start-sleep -Seconds 2;
$WSH.AppActivate("chrome");
start-sleep -Seconds 2;
$WSH.sendKeys("^a");
start-sleep -Seconds 2;
$WSH.sendKeys("^c");
start-sleep -Seconds 2;
Start-Process -FilePath "notepad" -WindowStyle Maximized;
start-sleep -Seconds 1;
$WSH.AppActivate("notepad");
start-sleep -Seconds 2;
$WSH.sendKeys("^v");
start-sleep -Seconds 2;
$filename = [System.IO.Path]::GetRandomFileName().split(".")[0] + ".txt";
start-sleep -Seconds 1;
$WSH.sendKeys("^s");
start-sleep -Seconds 1;
$WSH.sendKeys($filename);
start-sleep -Seconds 1;
$WSH.sendKeys("~");
start-sleep -Seconds 1;
$WSH.SendKeys("%{F4}");
# check if substring of string
 If ("word test" | %{$_ -match "test"}) { echo Contains String; } else {echo Not Contains String};
