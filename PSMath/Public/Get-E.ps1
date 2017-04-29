<#
.Synopsis
   Retrieves the value "e" commonly used to calculate interest
.DESCRIPTION
   Long description
.EXAMPLE
   To find "e" simply run the command

   PS> Get-E
   2.71828182845905...
.EXAMPLE
   To find a multiple of "e" run the command with the -multiplier command

   PS> Get-E 2
   7.38905609893065...
#>
function Get-E
{
    [CmdletBinding()]
    Param
    (
        # Item to take the square root of
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromPipeline=$true,
                   Position=0)]
        $multiplier=1
    )
    $result = [math]::exp($multiplier)
    return $result
}