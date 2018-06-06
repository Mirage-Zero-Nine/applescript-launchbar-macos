-- LaunchBar Action Script

tell application "System Events" to tell process "iTunes"
	set frontmost to true
	key code 53
	try
		menu item "Sign Out…" of menu "Account" of menu bar item "Account" of menu bar 1
	end try
	delay 2
	click menu item 2 of menu 1 of menu bar item 8 of menu bar 1
	delay 1
	keystroke "YOUR APPLE ID"
	keystroke tab
	keystroke "YOUR APPLE ID PASSWORD"
	keystroke return
end tell
