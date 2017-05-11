<#
.Synopsis
   Retrieves a quantity representing the power to which a fixed number (the base) must be raised to produce a given number
.DESCRIPTION
   Long description
.EXAMPLE
   
.EXAMPLE
#>
function Get-Log
{
    [CmdletBinding()]
    Param
    (
        # Item to take the square root of
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromPipeline=$true,
                   Position=0)]
        $number,
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromPipeline=$true,
                   Position=1)]
        $base
    )
    $result = [math]::Log($number,$base)
    return $result
}