# PowerShell Functions and Script Organization Script

#region Functions

# Function to say hello
function SayHello {
    Write-Host "Hello, PowerShell!"
}

# Function to greet a user
function GreetUser {
    param(
        [string]$name
    )
    Write-Host "Hello, $name!"
}

# Function to add numbers
function AddNumbers {
    param(
        [int]$a,
        [int]$b
    )
    return $a + $b
}

#endregion Functions

#region Main Script

# Calling functions
SayHello
GreetUser -name "John"

# Adding numbers and displaying the result
$result = AddNumbers -a 5 -b 7
Write-Host "Result of adding numbers: $result"

#endregion Main Script

#region Cleanup

# Additional cleanup or finalization code can go here

#endregion Cleanup
