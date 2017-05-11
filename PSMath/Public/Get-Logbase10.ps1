<#
.Synopsis
   Retrieves the log base 10
.DESCRIPTION
   Long description
.EXAMPLE

.EXAMPLE
#>
function Get-LogBase10
{
    [CmdletBinding()]
    Param
    (
        # Item to take the square root of
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromPipeline=$true,
                   Position=0)]
        $number
    )
    $result = [math]::Log10($number)
    return $result
}