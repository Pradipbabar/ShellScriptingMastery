# PowerShell Scripting Mastery

## Advanced File Operations and Compression

Welcome to the Advanced File Operations and Compression section of the PowerShell Scripting Mastery guide. In this section, you will learn how to handle symbolic links, temporary files, and directories using PowerShell. Additionally, you'll explore advanced file permission settings and dive into file compression and archiving.

### Advanced File Operations with PowerShell

#### 1. **Symbolic Links:**
   - Use `New-Item` with the `-ItemType SymbolicLink` parameter to create symbolic links.
     ```powershell
     New-Item -ItemType SymbolicLink -Path .\LinkToFolder -Target .\TargetFolder
     ```

#### 2. **Temporary Files:**
   - Generate unique temporary filenames with `New-TemporaryFile`.
     ```powershell
     $tempFile = New-TemporaryFile
     Write-Host "Temporary file created: $($tempFile.FullName)"
     ```

#### 3. **Directories:**
   - Manage directories with cmdlets like `New-Item` and `Remove-Item`.
     ```powershell
     New-Item -ItemType Directory -Path .\NewDirectory
     Remove-Item -Path .\DirectoryToDelete -Recurse
     ```

### Advanced File Permission Settings

#### 1. **Get-Acl and Set-Acl:**
   - Use `Get-Acl` to retrieve file or directory security settings and `Set-Acl` to apply changes.
     ```powershell
     $acl = Get-Acl .\TargetFolder
     $rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Everyone", "FullControl", "Allow")
     $acl.SetAccessRule($rule)
     Set-Acl -Path .\TargetFolder -AclObject $acl
     ```

#### 2. **Inheritance Handling:**
   - Manage inheritance settings with `$acl.SetAccessRuleProtection($true)` to prevent inheritance.
     ```powershell
     $acl.SetAccessRuleProtection($true)
     ```

### File Compression and Archiving with PowerShell

#### 1. **Compress-Archive:**
   - Use `Compress-Archive` to create compressed archives (zip files).
     ```powershell
     Compress-Archive -Path .\FolderToCompress -DestinationPath .\CompressedArchive.zip
     ```

#### 2. **Expand-Archive:**
   - Utilize `Expand-Archive` to extract files from a compressed archive.
     ```powershell
     Expand-Archive -Path .\CompressedArchive.zip -DestinationPath .\ExtractedFolder
     ```

### How to Use This Guide

1. **File Operations Practice:**
   - Experiment with creating symbolic links, handling temporary files, and managing directories using PowerShell.

2. **File Permission Settings Exploration:**
   - Explore retrieving and modifying file permission settings using `Get-Acl` and `Set-Acl`.

3. **File Compression and Archiving Experimentation:**
   - Practice compressing and archiving files using `Compress-Archive` and extracting files with `Expand-Archive`.

4. **Documentation Review:**
   - Refer to the [PowerShell Documentation - New-Item](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_files#new-item), [PowerShell Documentation - Get-Acl](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_files#get-acl), and [PowerShell Documentation - Compress-Archive](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_files#compress-archive) for more detailed information.

### Additional Resources

- [PowerShell Documentation - New-Item](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_files#new-item)
- [PowerShell Documentation - Get-Acl](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_files#get-acl)
- [PowerShell Documentation - Compress-Archive](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_files#compress-archive)

By the end of this section, you will be adept at handling advanced file operations, managing file permissions, and working with file compression and archiving in PowerShell. Happy scripting!
