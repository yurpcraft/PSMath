$Public  = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )

Foreach($function in @($Public + $Private)) {
    Try {
        .$funtion.fullname
    }
    Catch {
        Write-Error -Message "Failed to import function $($function.fullname): $_"
    }
}

Export-ModuleMember -Function $Public.Basename