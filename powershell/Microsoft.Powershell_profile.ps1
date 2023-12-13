# Delete bin and obj folders in a .NET solution
function clean{
    $Folders = Get-ChildItem .\ -include bin,obj -Recurse
    $PercentComplete = 0
    $Delay = 500

    for ($i = 0; $i -lt $Folders.Count; $i++) {
        $ProgressDetails = @{
            Activity          = "Cleaning out bin and obj folders in the solution"
            Status            = "Deleting"
            CurrentOperation  = $Folders[$i].FullName
            PercentComplete   = $PercentComplete
        }

        Start-Sleep -Milliseconds $Delay
        Write-Progress @ProgressDetails

        Remove-Item $Folders[$i].FullName -Force -Recurse

        $PercentComplete = ($i / $Folders.Count) * 100
        $ProgressDetails.PercentComplete = $PercentComplete

        Start-Sleep -Milliseconds $Delay
        Write-Progress @ProgressDetails
    }
}
