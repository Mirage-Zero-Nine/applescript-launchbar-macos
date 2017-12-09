-- LaunchBar Action Script

tell application "PyCharm" to tell application "System Events" to tell process "SystemUIServer"
	tell (1st menu bar item of menu bar 1 whose description is "text input") to {click, click (menu 1's menu item "U.S.")}
end tell
