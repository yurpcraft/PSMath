<#
.Synopsis
   Retrieves the sin of the input value.
.DESCRIPTION
   Long description
.EXAMPLE
   To take the sin of a 

   PS> Get-Sin -number 90
   
.EXAMPLE
   To take the Arcsin of a 

.EXAMPLE
   To take the Hyperbolic sin of a 
   
#>
function Get-Sin
{
    [CmdletBinding()]
    Param
    (
        # Item to take the sine of
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromPipeline=$true,
                   Position=0)]
        $number,
        # switch for Arcsine
        [Parameter(Mandatory=$false)]
        $Arc,
        # switch for Hyperbolic sine
        [Parameter(Mandatory=$false)]
        $Hyperbolic,
        # switch for returning degrees instead of radians
        [Parameter(Mandatory=$false)]
        $toDegrees
    )

    if ($Arc) {
        $result = [math]::asin($number)
    }
    elseif ($Hyperbolic) {
        $result = [math]::sinh($number)
    }
    else {
        $result = [math]::sin($number)
    }

    if($toDegrees) {
        return (($result * 180) / [math]::pi )
    } else {
        return $result
    }
}