-- LaunchBar Action Script

tell application "System Events" to tell process "App Store"
	set frontmost to true
	try
		click menu item "Sign Out" of menu 1 of menu bar item "Store" of menu bar 1
	end try
	delay 2
	click menu item "Sign In…" of menu "Store" of menu bar item "Store" of menu bar 1
	repeat until exists sheet 1 of window 1
		delay 1
	end repeat
	set value of text field "Apple ID:" of sheet 1 of window 1 to "APPLE_ID"
	delay 0.5
	keystroke return
	set value of text field "Apple ID:" of sheet 1 of window 1 to "APPLE_ID"
	delay 0.5
	set value of text field "Password:" of sheet 1 of window 1 to "PASSWORD"
	keystroke return
end tell
