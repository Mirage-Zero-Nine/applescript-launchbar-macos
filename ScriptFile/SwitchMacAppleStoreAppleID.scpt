tell application "System Events" to tell process "App Store"
	set frontmost to true
	key code 53
	try
		click menu item 12 of menu 1 of menu bar item 4 of menu bar 1
	end try
	delay 0.5
	click menu item 12 of menu 1 of menu bar item 4 of menu bar 1
	repeat until exists sheet 1 of window 1
		delay 0.2
	end repeat
	set value of text field 2 of sheet 1 of window 1 to "Your Apple ID Here"
	set value of text field 1 of sheet 1 of window 1 to "Your Password Here"
	delay 0.5
	keystroke return
end tell
