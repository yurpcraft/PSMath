<#
.Synopsis
   Returns the smallest integral value that is greater than or equal to the specified number.
.DESCRIPTION
   Returns the smallest integral value that is greater than or equal to the spicified number.

   The input value can be of the following types:
        -Decimal
        -Double
.EXAMPLE

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