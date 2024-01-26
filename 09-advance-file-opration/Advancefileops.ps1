# PowerShell Advanced File Operations and Compression Script

# Symbolic Links
New-Item -ItemType Directory -Path .\TargetFolder
New-Item -ItemType SymbolicLink -Path .\LinkToFolder -Target .\TargetFolder

# Temporary Files
$tempFile = New-TemporaryFile
Write-Host "Temporary file created: $($tempFile.FullName)"

# Directories
New-Item -ItemType Directory -Path .\NewDirectory
Remove-Item -Path .\DirectoryToDelete -Recurse -Force

# File Permission Settings
$acl = Get-Acl .\TargetFolder
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Everyone", "FullControl", "Allow")
$acl.SetAccessRule($rule)
Set-Acl -Path .\TargetFolder -AclObject $acl

# Inheritance Handling
$acl.SetAccessRuleProtection($true)

# File Compression and Archiving
Compress-Archive -Path .\FolderToCompress -DestinationPath .\CompressedArchive.zip
Expand-Archive -Path .\CompressedArchive.zip -DestinationPath .\ExtractedFolder

