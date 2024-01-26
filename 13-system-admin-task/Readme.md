# PowerShell Scripting Mastery

## Advanced System Administration Tasks

Welcome to the Advanced System Administration Tasks section of the PowerShell Scripting Mastery guide. In this section, you will learn how to automate complex system administration tasks using PowerShell and delve into performance tuning and optimization strategies.

### Automating Complex System Administration Tasks

#### 1. **Service Management:**
   - Automate the management of services, including starting, stopping, and configuring services.
     ```powershell
     Start-Service -Name "ServiceName"
     Stop-Service -Name "ServiceName"
     Set-Service -Name "ServiceName" -StartupType Automatic
     ```

#### 2. **Scheduled Tasks:**
   - Utilize PowerShell to create and manage scheduled tasks for automated, recurring activities.
     ```powershell
     $action = New-ScheduledTaskAction -Execute "C:\Path\To\Script.ps1"
     $trigger = New-ScheduledTaskTrigger -Daily -At "3:00 AM"
     Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "DailyTask"
     ```

### Performance Tuning and Optimization Strategies

#### 1. **Performance Counters:**
   - Leverage performance counters to monitor and optimize system performance.
     ```powershell
     Get-Counter -Counter "\Processor(_Total)\% Processor Time" -Continuous -SampleInterval 5
     ```

#### 2. **System Resource Optimization:**
   - Optimize system resources by adjusting settings and configurations based on performance metrics.
     ```powershell
     # Example: Adjusting Windows Update settings for performance
     Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "AUOptions" -Value 2
     ```

### How to Use This Guide

1. **System Administration Task Practice:**
   - Experiment with the provided examples for service management and scheduled tasks to automate system administration tasks.

2. **Performance Tuning Experimentation:**
   - Practice using performance counters to monitor system performance and explore resource optimization strategies using PowerShell.

3. **Documentation Review:**
   - Refer to the [PowerShell Documentation - Service Cmdlets](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_services) for service-related tasks and [PowerShell Documentation - Get-Counter](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-counter) for performance monitoring.

### Additional Resources

- [PowerShell Documentation - Service Cmdlets](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_services)
- [PowerShell Documentation - Get-Counter](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-counter)

By the end of this section, you will possess the skills to automate complex system administration tasks and implement performance tuning and optimization strategies using PowerShell. These capabilities will contribute to efficient and well-managed systems. Happy scripting!
