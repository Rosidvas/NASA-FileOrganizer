
    <# ----NASA-Class file organizer---- #>
    <# Author: Studer                    
    <  # Version: 0.0.1                    
    <# Date: 13/06/2022                  
    <# Description                       
    <# Very swift and efficient file organizer     
    <# graded by the finest rocket scientists at NASA
    <#----------------------------------------------------#>

    $path = "C:\users\rando\downloads"
    $picturePath = "C:\Users\rando\OneDrive\Pictures\Saved Pictures"
    $countjpeg = 0

    $fileNum = @(Get-ChildItem $path)
    foreach ($files in $fileNum)
    {
    
        $extn = [System.IO.Path]::GetExtension($files)
   
        if ($extn -eq '.jpg')
        {
        Move-Item -path $path $files -Destination $picturePath
        $countjpeg++
        Write-Host "Picture moved successfully" -ForegroundColor Yellow
        }
    }
