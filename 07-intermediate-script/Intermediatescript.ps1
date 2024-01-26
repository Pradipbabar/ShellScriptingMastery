# PowerShell Intermediate Scripting Techniques Script

# Function with parameter expansion
function Example-Function {
    param(
        $param1,
        $param2
    )
    Write-Host "Parameter 1: $param1"
    Write-Host "Parameter 2: $param2"
}

# Positional Parameters
Example-Function "Value1" "Value2"

# Named Parameters
Example-Function -param2 "Value2" -param1 "Value1"

# Splatting
$parameters = @{
    param1 = "Value1"
    param2 = "Value2"
}

Example-Function @parameters

# Switch Statement
$day = "Monday"

switch ($day) {
    "Monday"    { Write-Host "It's the start of the week." }
    "Friday"    { Write-Host "It's almost the weekend!" }
    default     { Write-Host "It's a regular day." }
}

# ForEach-Object
$numbers = 1..5

$numbers | ForEach-Object {
    Write-Host "Current Number: $_"
}

# While Loop
$counter = 1

while ($counter -le 5) {
    Write-Host "Iteration $counter"
    $counter++
}

