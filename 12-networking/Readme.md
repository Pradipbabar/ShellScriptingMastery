# PowerShell Scripting Mastery

## Networking and Security Automation

Welcome to the Networking and Security Automation section of the PowerShell Scripting Mastery guide. In this section, you will script advanced networking tasks and explore the realm of security automation using PowerShell.

### Scripting Advanced Networking Tasks

#### 1. **TCP/IP Configuration:**
   - Script advanced TCP/IP configuration tasks such as setting IP addresses, configuring DNS, and managing network interfaces.
     ```powershell
     Set-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress "192.168.1.2" -PrefixLength 24
     Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses ("8.8.8.8", "8.8.4.4")
     ```

#### 2. **Network Diagnostics:**
   - Utilize PowerShell for network diagnostics, including testing connectivity and pinging remote hosts.
     ```powershell
     Test-Connection -ComputerName "example.com" -Count 4
     ```

### Scripting for Security Automation

#### 1. **Security Policy Enforcement:**
   - Enforce security policies by scripting tasks like updating firewall rules or configuring security settings.
     ```powershell
     New-NetFirewallRule -DisplayName "Allow SSH" -Direction Inbound -Protocol TCP -LocalPort 22 -Action Allow
     ```

#### 2. **Security Auditing:**
   - Automate security auditing tasks, such as reviewing event logs or monitoring for suspicious activities.
     ```powershell
     Get-WinEvent -LogName Security -MaxEvents 10 | Format-List
     ```

### How to Use This Guide

1. **Advanced Networking Task Practice:**
   - Experiment with the provided examples for TCP/IP configuration and network diagnostics to automate advanced networking tasks.

2. **Security Automation Experimentation:**
   - Practice scripting security policy enforcement and security auditing tasks using PowerShell for enhanced security automation.

3. **Documentation Review:**
   - Refer to the [PowerShell Documentation - Networking Cmdlets](https://docs.microsoft.com/en-us/powershell/module/nettcpip/?view=win10-ps) for networking tasks and [PowerShell Documentation - Security Cmdlets](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_security) for security-related tasks.

### Additional Resources

- [PowerShell Documentation - Networking Cmdlets](https://docs.microsoft.com/en-us/powershell/module/nettcpip/?view=win10-ps)
- [PowerShell Documentation - Security Cmdlets](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_security)

By the end of this section, you will be proficient in scripting advanced networking tasks and automating security-related activities using PowerShell. These skills will empower you to enhance network management and strengthen security measures in your environments. Happy scripting!
