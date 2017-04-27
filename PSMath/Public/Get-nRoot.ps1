<#
.Synopsis
   Retrieves the "nth" root of the input number
.DESCRIPTION
   Long description
.EXAMPLE
   To take the cube root of 27, you could input the following:

   PS> Get-nRoot -number 27 -root 3
   3
.EXAMPLE
#>
function Get-nRoot
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
        $root
    )
    $result = [math]::Pow( $number,1/$root )
    return $result
}