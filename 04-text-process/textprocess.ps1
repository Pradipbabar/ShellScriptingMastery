# PowerShell Text Processing Basics Script

# Sample file content for demonstration
@"
This is a sample file.
It contains some text for text processing basics.
Pattern matching with regular expressions is powerful.
"@
| Out-File .\SampleFile.txt

# Select-String for basic pattern matching
Write-Host "Searching for the pattern 'text' in SampleFile.txt:"
Select-String -Pattern "text" .\SampleFile.txt

# Get-Content to retrieve and display file content
Write-Host "Content of SampleFile.txt:"
Get-Content .\SampleFile.txt

# Out-File to write new content to a file
"New text content" | Out-File .\NewFile.txt
Write-Host "NewFile.txt created with content."

# Add-Content to append content to an existing file
"Additional content" | Add-Content .\SampleFile.txt
Write-Host "Content added to SampleFile.txt."

# Regular expressions for pattern matching
Write-Host "Using regular expression to find lines starting with 'Pattern':"
Select-String -Pattern "^Pattern" .\SampleFile.txt

# Display a closing message
Write-Host "Text Processing Basics script completed."
