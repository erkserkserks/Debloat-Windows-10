#   Description:
# This script optimizes Windows updates by disabling automatic download and
# seeding updates to other computers.
#
Import-Module -DisableNameChecking $PSScriptRoot\..\lib\force-mkdir.psm1

echo "Disable seeding of updates to other computers via Group Policies"
force-mkdir "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization"
sp "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" "DODownloadMode" 0

#echo "Disabling automatic driver update"
#sp "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" "SearchOrderConfig" 0
