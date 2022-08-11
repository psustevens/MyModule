#Get public function definition files and dot source them.
Get-ChildItem -Path $PSScriptRoot\Public -Filter '*.ps1' -Recurse | ForEach-Object { 
    try {
        . $_.FullName
    }
    catch {
        Write-Error -Message "Failed to import function $($_.fullname): $_"
    }
}

#Get private function definition files and dot source them.
Get-ChildItem -Path $PSScriptRoot\Private -Filter '*.ps1' -Recurse | ForEach-Object { 
    try {
        . $_.FullName
    }
    catch {
        Write-Error -Message "Failed to import function $($_.fullname): $_"
    }
}

# Export the Public functions
Get-ChildItem -Path $PSScriptRoot\Public -Filter '*.ps1' -Recurse | ForEach-Object { 
    Export-ModuleMember -Function $_.BaseName -Alias *
}
