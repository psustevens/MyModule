#Get public and private function definition files.
$Public = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )

#Dot source the files
Foreach($PSFile in @($Public))
{
    Try
    {
        . $PSFile.fullname
    }
    Catch
    {
        Write-Error -Message "Failed to import function $($PSFile.fullname): $_"
    }
}

# Export the Public modules
Export-ModuleMember -Function $Public.Basename -Alias *