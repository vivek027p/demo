# Define the folder path and file name
$folderPath = "C:\Path\To\Your\Folder"
$fileName = "SampleTextFile.txt"

# Check if the folder already exists, if not, create it
if (-not (Test-Path -Path $folderPath -PathType Container)) {
    New-Item -Path $folderPath -ItemType Directory
    Write-Host "Folder created: $folderPath"
}

# Create a sample text file in the folder
$filePath = Join-Path -Path $folderPath -ChildPath $fileName
"Hello, this is a sample text file." | Out-File -FilePath $filePath -Encoding UTF8
Write-Host "Sample text file created: $filePath"
