#   Description:
# This script blocks telemetry related domains via the hosts file and related
# IPs via Windows Firewall.

Import-Module -DisableNameChecking $PSScriptRoot\..\lib\force-mkdir.psm1

echo "Disabling telemetry via Group Policies"
force-mkdir "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
sp "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" 0

