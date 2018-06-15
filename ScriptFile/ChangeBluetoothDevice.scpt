-- LaunchBar Action Script

tell application "System Events" to tell process "SystemUIServer"
	set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
	tell btMenu
		click
		tell (menu item "YOUR DEVICE" of menu 1) -- Type your device name here
			click
			if exists menu item "Connect" of menu 1 then
				click menu item "Connect" of menu 1
				return "Connecting..."
			else
				click btMenu
			end if
		end tell
	end tell
end tell
-- Test comment
