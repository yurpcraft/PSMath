<#
.Synopsis
   Returns the largest integer less than or equal to the specified number.
.DESCRIPTION
   Long description
.EXAMPLE
   To take the floor of 27.23421234 you could input the following:

   PS> Get-Floor -number 27.23421234
   27
.EXAMPLE
#>
function Get-Floor
{
    [CmdletBinding()]
    Param
    (
        # Item to take the square root of
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromPipeline=$true,
                   Position=0)]
        [decimal]$number
    )
    $result = [math]::floor($number)
    return $result
}