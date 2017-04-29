<#
.Synopsis
   Retrieves the numerical distance from 0 of a value.
.DESCRIPTION
   Retrieves the numerical distance from 0 of a value.

   Values can be of the following types:
        -integer16
        -integer32
        -integer64
        -Decimal
        -Single
        -Double
        -SByte
.EXAMPLE
   To take the absolute value of -28, you could input the following:

   PS> Get-AbsoluteValue "-28"
   28
.EXAMPLE
   This function also has the alias of AbsoluteValue which can be called via the following:

   PS> AbsoluteValue "-28"
   28
#>
function Get-AbsoluteValue
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
    $result = [math]::Abs($number)
    return $result
}