$Source  = "C:\user\OneDrive\"
$Destination = "E:\"
Stop-Process -Name OneDrive
foreach($file_dir in Get-ChildItem $Source)
{
    $file_path = $Source + $file_dir
    Write-Host $file_path
    Copy-Item $file_path -Destination $Destination -Force -Recurse
}
Start-Process -FilePath "C:\Users\OneDrive\OneDrive.exe"