tell application "Audio MIDI Setup"
	activate
end tell
delay 2
try
	tell application "System Events"
		tell process "Audio MIDI Setup"
			select ((UI elements of outline 1 of scroll area 1 of splitter group 1 of window "Audio Devices") whose description is "MacBook Pro Speakers")
			set target to value of attribute "AXFocusedUIElement"
			tell target to perform action "AXShowMenu"
			click menu item "Use This Device For Sound Output" of menu 1 of outline 1 of scroll area 1 of splitter group 1 of window "Audio Devices"
			
		end tell
	end tell
end try
