# PowerShell Command Line Basics

# Display a welcome message
Write-Host "Welcome to PowerShell Command Line Basics!"

# Navigate to a directory
cd C:\Windows\System32

# List the contents of the current directory
Write-Host "Contents of the current directory:"
Get-ChildItem

# Display information about a specific command
Write-Host "Get-Help for Get-Process command:"
Get-Help Get-Process

# List all available commands
Write-Host "List of all available commands:"
Get-Command

# Clear the console screen
Write-Host "Clearing the console screen..."
Clear-Host

# Use the pipeline to filter and format the output
Write-Host "Filtering and Formatting: Listing running processes with specific properties"
Get-Process | Select-Object Name, Id, CPU | Format-Table

# Display a closing message
Write-Host "Congratulations! You've completed the PowerShell Command Line Basics script."
