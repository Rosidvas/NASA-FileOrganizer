<# ----NASA-Class file organizer---- #>
    <# Author: Studer                    
    <  # Version: 0.0.1                    
    <# Date: 13/06/2022                  
    <# Description                       
    <# Very swift and efficient file organizer     
    <# graded by the finest rocket scientists at NASA
    <#----------------------------------------------------#>

    $path = "C:\users\rando\downloads"
    $filePath = 
    $picturePath = "C:\Users\rando\OneDrive\Pictures\Saved Pictures"
    $emptyDownloads = $true
    $Modules = @(Get-ChildItem -path "C:\Users\rando\OneDrive\Documents\Schule\BBBaden\Semester 2" | Select-Object Name)

    $File = get-childitem -path $path | select-object -First 1
    $hasAnyFiles = (Get-ChildItem -path $path).Count

    while ($emptyDownloads)
    {
        
        $extn = [System.IO.Path]::GetExtension($File)

        if ($extn -eq '.jpg' -or $extn -eq '.jpeg')
        {
            $File | move-item -destination $picturePath
            Write-Host "Picture moved successfully" -ForegroundColor Yellow
        }
        elseif ($extn -eq '.docx')
        {
            
            if($File.Name -match $Modules)
            {
                $File | move-Item -Destination $filePath where $File.Name -match $Modules.Name
            }

            
        }
        


        if ($hasAnyFiles -gt 0)
        {
            $emptyDownloads = $false
        }
    } 
