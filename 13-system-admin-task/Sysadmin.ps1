# PowerShell Advanced System Administration Script

#region Automating Complex System Administration Tasks

# Service Management: Start, Stop, Configure
Start-Service -Name "wuauserv"   # Start Windows Update service
Stop-Service -Name "wuauserv"    # Stop Windows Update service
Set-Service -Name "wuauserv" -StartupType Automatic   # Configure Windows Update service to start automatically

# Scheduled Tasks: Create a daily task
$action = New-ScheduledTaskAction -Execute "C:\Path\To\Script.ps1"
$trigger = New-ScheduledTaskTrigger -Daily -At "3:00 AM"
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "DailyTask"

#endregion Automating Complex System Administration Tasks

#region Performance Tuning and Optimization Strategies

# Performance Counters: Monitor Processor Time
Get-Counter -Counter "\Processor(_Total)\% Processor Time" -Continuous -SampleInterval 5

# System Resource Optimization: Adjust Windows Update settings for performance
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "AUOptions" -Value 2

#endregion Performance Tuning and Optimization Strategies
