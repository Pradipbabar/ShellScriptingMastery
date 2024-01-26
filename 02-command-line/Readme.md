# PowerShell Scripting Mastery

## Command Line Basics

Welcome to the Command Line Basics section of the PowerShell Scripting Mastery guide. In this section, you will become familiar with the PowerShell command line interface, learning essential commands and their options.

### Navigating the PowerShell Command Line

#### 1. **Launching PowerShell:**
   - Open PowerShell on your system. You can do this by searching for "PowerShell" in the Start menu.

#### 2. **Navigating Directories:**
   - Learn how to change directories using the `cd` command.
   - Use `ls` or `dir` to list the contents of a directory.

#### 3. **Path Notation:**
   - Understand the path notation used in PowerShell, including relative and absolute paths.

### Common PowerShell Commands

#### 1. **Get-Help:**
   - Familiarize yourself with the `Get-Help` command to access documentation for other commands.
     ```powershell
     Get-Help <CommandName>
     ```

#### 2. **Get-Command:**
   - Use `Get-Command` to list all available commands or find specific ones.
     ```powershell
     Get-Command
     Get-Command <CommandName>
     ```

#### 3. **Get-ChildItem:**
   - Explore the `Get-ChildItem` command to list items in a directory.
     ```powershell
     Get-ChildItem
     ```

#### 4. **Set-Location:**
   - Change the current location using `Set-Location` or its alias `cd`.
     ```powershell
     Set-Location <Path>
     cd <Path>
     ```

#### 5. **Clear-Host:**
   - Use `Clear-Host` to clear the PowerShell console screen.
     ```powershell
     Clear-Host
     ```

#### 6. **Pipeline (|):**
   - Understand the concept of the pipeline (`|`) to pass the output of one command as input to another.
     ```powershell
     Get-Process | Stop-Process
     ```

### How to Use This Guide

1. **Experiment in PowerShell:**
   - Open PowerShell and practice the commands discussed in this section.

2. **Explore Documentation:**
   - Use `Get-Help` to explore the documentation for different commands.

3. **Combine Commands:**
   - Experiment with combining commands using the pipeline (`|`) to perform more complex tasks.

### Additional Resources

- [PowerShell Command-Line Documentation](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-everything)

By the end of this section, you will be comfortable navigating the PowerShell command line and using common commands. This knowledge will set the stage for more advanced scripting tasks. Happy scripting!
