set wifiStatus to do shell script "networksetup -getairportpower en0"

if wifiStatus is equal to "Wi-Fi Power (en0): On" then
-- This "Wi-Fi Power (en0): On" should be checked on your own device, not every device has the same device name.
	do shell script "networksetup -setairportpower en0 off"
else
	do shell script "networksetup -setairportpower en0 on"
end if
