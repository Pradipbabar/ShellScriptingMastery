# PowerShell Scripting Basics

# Introduction to Variables and Data Types
$firstName = "John"
$age = 30
$height = 5.9
$isStudent = $true

# Displaying Variables
Write-Host "Name: $firstName"
Write-Host "Age: $age"
Write-Host "Height: $height feet"
Write-Host "Is Student: $isStudent"

# Fundamental Control Structures

# If-Else Statement
if ($age -lt 18) {
    Write-Host "You are a minor."
} else {
    Write-Host "You are an adult."
}

# For Loop
Write-Host "Counting from 1 to 5:"
for ($i = 1; $i -le 5; $i++) {
    Write-Host $i
}

# While Loop
$counter = 3
Write-Host "Counting down from 3:"
while ($counter -ge 1) {
    Write-Host $counter
    $counter--
}

# Do-While Loop
$index = 1
Write-Host "Using Do-While Loop:"
do {
    Write-Host "Index: $index"
    $index++
} while ($index -le 3)
