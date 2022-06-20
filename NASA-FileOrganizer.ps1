{
<# ----NASA-Class file organizer---- #>
<# Author: Studer                    
<# Version: 0.0.1                    
<# Date: 13/06/2022                  
<# Description                       
<# Very swift and efficient file organizer     
<# graded by the finest rocket scientists at NASA
<#----------------------------------------------------#>






$path = "C:\users\rando\downloads"
$folderPath = "C:\Users\rando\OneDrive\Documents\Schule\BBBaden"
$picturePath = "C:\Users\rando\OneDrive\Pictures\Saved Pictures"
$unorganized = 0
$countjpeg = 0

$fileNum = @(Get-ChildItem $path)
foreach ($files in $fileNum)
{
    $folderName = @(Get-ChildItem $folderPath -Recurse -Directory)
    }
    $extn = [System.IO.Path]::GetExtension($files)
   
    if ($extn -eq '.jpeg')
    {
        Move-Item $files -Destination $picturePath
        $countjpeg++
        Write-Host "Picture moved successfully" -ForegroundColor Yellow
    }

    if ($files -match $folderName)
    {
        ++$unorganized
    }
    
    $unorganized
    $countjpeg
    
}
