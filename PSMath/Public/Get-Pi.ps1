<#
.Synopsis
   Retrieves the value "pi" commonly used to calculate radians
.DESCRIPTION
   Long description
.EXAMPLE
   To find "pi" simply run the command

   PS> Get-Pi
   3.14159265358979...
#>
function Get-Pi
{
    [CmdletBinding()]
    $result = [math]::pi
    return $result
}