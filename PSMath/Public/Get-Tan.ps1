<#
.Synopsis
   Retrieves the tangent of an input value
.DESCRIPTION
   Long description
.EXAMPLE
   To take the tangent of a value, you could input the following:

   PS> Get-Tan -number 
   
.EXAMPLE
   To take the Arctan of a 

.EXAMPLE
   To take the Hyperbolic tangent of a 
   
#>
function Get-Tan
{
    [CmdletBinding()]
    Param
    (
        # Item to take the tangent of
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromPipeline=$true,
                   Position=0)]
        $number,
        # switch for Arctangent
        [Parameter(Mandatory=$false)]
        $Arc,
        # switch for Hyperbolic tangent
        [Parameter(Mandatory=$false)]
        $Hyperbolic
    )

    if ($Arc) {
        $result = [math]::atan($number)
    }
    elseif ($Hyperbolic) {
        $result = [math]::tanh($number)
    }
    else {
        $result = [math]::tan($number)
    }

    return $result
}