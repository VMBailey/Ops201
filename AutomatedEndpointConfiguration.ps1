# Script Name: Automated Endpoint Configurations
# Author: Vincent Bailey
# Date of Latest Revision: 08/9/2021
# Purpose: This script will enable and disable certain features related to Windows 10. Effectively
# applying these changes to any computer that runs this script. A handy tool. Revise this.

# Enable File Sharing
Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True -Profile Any

# Allow ICMP Traffic
# IPv4
netsh advfirewall firewall add rule name="ICMP v4 Allow" protocol=icmpv4:8, any dir=in action=allow

# IPv6
netsh advfirewall firewall add rule name="ICMP v6 Allow" protocol=icmpv6:8, any dir=in action=allow

# Enable Remote Management
Enable-PSRemoting

# Remove bloatware. In this case, we're deleting Skype
Get-AppxPackage *skype* | Remove-AppxPackage

# Enable Hyper V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1
Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol