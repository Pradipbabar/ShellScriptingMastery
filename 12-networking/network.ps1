# PowerShell Networking and Security Automation Script

#region Advanced Networking Tasks

# TCP/IP Configuration
Set-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress "192.168.1.2" -PrefixLength 24
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses ("8.8.8.8", "8.8.4.4")

# Network Diagnostics: Ping example
$pingResult = Test-Connection -ComputerName "example.com" -Count 4
Write-Host "Ping Result to example.com:"
$pingResult | Format-Table Address, ResponseTime, StatusCode

#endregion Advanced Networking Tasks

#region Security Automation

# Security Policy Enforcement: Allow SSH Rule
New-NetFirewallRule -DisplayName "Allow SSH" -Direction Inbound -Protocol TCP -LocalPort 22 -Action Allow

# Security Auditing: Review Event Logs
$securityEvents = Get-WinEvent -LogName Security -MaxEvents 10 | Format-List
Write-Host "Recent Security Events:"
$securityEvents

#endregion Security Automation
