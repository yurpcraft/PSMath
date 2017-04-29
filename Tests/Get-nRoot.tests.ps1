<#

Description: Series of Unit tests for the PSMath module
Author: Bryce McDonald
Date: 27APR2016

#>
$here = Split-Path (Split-Path -Parent $PSScriptRoot)
$here = "$here\PSMath\PSMath"

Describe 'Unit tests for Get-nRoot' {
    Context 'With valid input' {
        It 'returns the correct cube root of integers' {
            Get-nRoot 27 3 | should be 3
        }
    }
    Context 'With invalid input' {
        It 'throws an error on non-numeric input' {
            Get-nRoot 27 abc | should throw
        }
    }
}