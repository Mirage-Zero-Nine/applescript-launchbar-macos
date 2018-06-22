-- LaunchBar Action Script
-- Switch to US MAS

tell application "System Events" to tell process "App Store"
	set frontmost to true
	try
		click menu item "Sign Out" of menu 1 of menu bar item "Store" of menu bar 1
	end try
	delay 1
	click menu item "Sign In…" of menu "Store" of menu bar item "Store" of menu bar 1
	repeat until exists sheet 1 of window 1
		delay 1
	end repeat
	set value of text field "Apple ID:" of sheet 1 of window 1 to "YOUR APPLE ID"
	click button "Sign In" of sheet 1 of window 1
	delay 1
	set value of text field "Password:" of sheet 1 of window "App Store" to "YOUR APPLE ID PASSWORD"
	delay 1
	click button "Sign In" of sheet 1 of window 1
end tell
