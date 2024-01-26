# PowerShell Error Handling and Debugging Script

# Set ErrorActionPreference to Stop for strict error handling
$ErrorActionPreference = "Stop"

# Function with Try-Catch block for error handling
function Divide-Numbers {
    param(
        [int]$dividend,
        [int]$divisor
    )
    try {
        if ($divisor -eq 0) {
            throw "Cannot divide by zero."
        }
        return $dividend / $divisor
    }
    catch {
        Write-Host "Error: $_"
    }
}

# Function with Write-Debug statements for debugging
function MyFunction {
    Write-Debug "Entering MyFunction"
    $result = Divide-Numbers -dividend 10 -divisor 2
    Write-Debug "Result: $result"
}

# Sample script with breakpoint for debugging
Write-Host "Script started."

Set-PSBreakpoint -Script .\DebuggingScript.ps1 -Line 12

MyFunction

Write-Host "Script completed."
