# PowerShell Advanced Text Processing Script

# Sample content for text processing
@"
This is a sample file containing some keywords for advanced text processing.
123-45-6789
apple
orange
banana
"@
| Out-File .\SampleFile.txt

@"
Here is a list of fruits:
apple
orange
grape
banana
"@
| Out-File .\FruitList.txt

@"
Text with Social Security Numbers:
111-22-3333
444-55-6666
987-65-4321
"@
| Out-File .\TextWithSSNs.txt

# Out-String to convert objects to strings
Get-Process | Out-String

# Select-String with context
Write-Host "Context around lines containing 'sample':"
Get-Content .\SampleFile.txt | Select-String -Pattern "sample" -Context 2

# Measure-Object to count lines
Write-Host "Number of lines in FruitList.txt:"
(Get-Content .\FruitList.txt | Measure-Object -Line).Lines

# Extended Regular Expressions (ERE) with Select-String
Write-Host "Matching Social Security Numbers:"
Select-String -Pattern "[0-9]{3}-[0-9]{2}-[0-9]{4}" .\TextWithSSNs.txt

Write-Host "Matching repeated 'a' characters:"
Select-String -Pattern "a{2,}" .\SampleFile.txt

Write-Host "Matching fruits 'apple' or 'orange':"
Select-String -Pattern "apple|orange" .\FruitList.txt

