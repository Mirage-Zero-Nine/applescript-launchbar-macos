tell application "System Events" to tell process "iTunes"
	set frontmost to true
	key code 53
	try
		click menu item 6 of menu 1 of menu bar item 8 of menu bar 1
	end try
	delay 0.5
	click menu item 2 of menu 1 of menu bar item 8 of menu bar 1
	delay 0.2
	keystroke "Your Apple ID"
	keystroke tab
	keystroke "Your Password"
	keystroke return
end tell
