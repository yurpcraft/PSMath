<#
.Synopsis
   Returns the smallest integral value that is greater than or equal to the specified number.
.DESCRIPTION
   Returns the smallest integral value that is greater than or equal to the spicified number.

   The input value can be of the following types:
        -Decimal
        -Double
.EXAMPLE
   To take the ceiling of a given number, you could input the following:

   PS> Get-Ceiling -number 27.234982143
   28
.EXAMPLE

#>
function Get-Ceiling
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
    $result = [math]::Ceiling($number)
    return $result
}