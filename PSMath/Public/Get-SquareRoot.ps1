<#
.Synopsis
   Retrieves the squareroot of the input number
.DESCRIPTION
   Long description
.EXAMPLE
   Get-SquareRoot only takes one input - the number you'd like the SquareRoot of.  Calling it simply returns the following:

   PS> Get-SquareRoot 49
   7
.EXAMPLE
   Get-SquareRoot can also be called by its alias "sqrt"

   PS> sqrt 49
   7
#>
function Get-SquareRoot
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
    $sqrt = [math]::sqrt($number)
    return $sqrt
}