# PowerShell File Operations and Permissions Script

# Creating and Removing Files
New-Item -ItemType File -Path .\NewFile.txt
Write-Host "File created: NewFile.txt"

# Creating and Removing Directories
New-Item -ItemType Directory -Path .\NewDirectory
Write-Host "Directory created: NewDirectory"

# Copying and Moving Files
Copy-Item .\NewFile.txt .\Backup\
Write-Host "File copied to Backup directory"

Move-Item .\NewFile.txt .\Archive\
Write-Host "File moved to Archive directory"

# Renaming Files
Rename-Item .\Archive\NewFile.txt -NewName RenamedFile.txt
Write-Host "File renamed to RenamedFile.txt"

# Listing Files
Write-Host "Listing files in the current directory:"
Get-ChildItem

# Checking Permissions
$acl = Get-Acl .\RenamedFile.txt
Write-Host "Current permissions for RenamedFile.txt:"
$acl | Format-Table

# Setting Permissions
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("UserName", "Read", "Allow")
$acl.SetAccessRule($rule)
Set-Acl .\RenamedFile.txt $acl
Write-Host "Permissions updated for RenamedFile.txt"

# Taking Ownership
function Take-Ownership {
    param(
        [string]$path
    )
    
    $acl = Get-Acl $path
    $owner = New-Object System.Security.Principal.NTAccount("BUILTIN\Administrators")
    $acl.SetOwner($owner)
    Set-Acl $path $acl
    Write-Host "Ownership taken for $path"
}

Take-Ownership .\RenamedFile.txt

# Display a closing message
Write-Host "File Operations and Permissions script completed."
