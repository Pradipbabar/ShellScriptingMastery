# PowerShell Advanced Functions and Script Organization Script

#region Recursion and Function Pointers

# Recursion Example: Factorial Calculation
function Factorial {
    param([int]$n)
    if ($n -eq 0) { return 1 }
    return $n * (Factorial ($n - 1))
}

Write-Host "Factorial of 5: $(Factorial 5)"

# Function Pointer Example: Multiply using Function Pointer
$multiply = { param($a, $b) $a * $b }
$result = &$multiply 5 3
Write-Host "Result of multiplication: $result"

#endregion Recursion and Function Pointers

#region Best Practices for Organizing Larger Script Projects

# Module Scripting: MyModule.psm1
# function MyFunction { ... }

# Import and use the module
# Import-Module .\MyModule.psm1

# Script Blocks for Logical Sections
#region Functions

function Function1 {
    Write-Host "Function1"
}

function Function2 {
    Write-Host "Function2"
}

#endregion Functions

#region Main Script

# Main script logic goes here

#endregion Main Script

#region Cleanup

# Additional cleanup or finalization code can go here

#endregion Cleanup

# Comments and Documentation
<#
.SYNOPSIS
This script demonstrates recursion, function pointers, and script organization best practices.

.DESCRIPTION
It includes examples of calculating factorial using recursion, multiplying using a function pointer, and organizing script into logical sections.

.NOTES
File Name      : AdvancedFunctionsAndOrganizationScript.ps1
Prerequisite   : PowerShell 5.1
Copyright 2024 - Your Name
#>

#endregion Best Practices for Organizing Larger Script Projects
