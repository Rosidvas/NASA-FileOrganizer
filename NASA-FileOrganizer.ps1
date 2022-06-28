
  <# ----NASA-Class file organizer---- #>
    <# Author: Studer                    
    <  # Version: 0.0.1                    
    <# Date: 13/06/2022                  
    <# Description                       
    <# Very swift and efficient file organizer     
    <# graded by the finest rocket scientists at NASA
    <#----------------------------------------------------#>

    $path = "C:\users\rando\downloads"
    $dir = 'C:\users\rando\downloads'
    $picturePath = "C:\Users\rando\OneDrive\Pictures\Saved Pictures"
    $emptyDownloads = false
    
    do
    {
        get-childitem -path $path | select-object -First 1
        $extn = [System.IO.Path]::GetExtension($files)
        if ($extn -eq '.jpg','.jpeg')
        {
            move-item -destination $picturePath
            Write-Host "Picture moved successfully" -ForegroundColor Yellow
        }

        
        if ($hasAnySubdir = (Get-ChildItem -Force -Directory $dir).Count -gt 0)
        {
            $emptyDownloads = true
        }
        
    } while ($emptyDownloads)
