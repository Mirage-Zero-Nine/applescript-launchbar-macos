-- this script can convert word or powerpoint file to pdf
-- also support batch converting, as long as those files are given as input para in automator/launchbar/finder service

property wordList : {"doc", "docx"}
property pptList : {"ppt", "pptx"}

on run {input, parameters}
	repeat with x in input
		set f to contents of x
		tell application "System Events"
			set ext to name extension of f
		end tell
		if ext is in wordList then
			tell application "Microsoft Word"
				launch
			end tell
		end if
		if ext is in pptList then
			tell application "Microsoft PowerPoint"
				launch
			end tell
		end if
	end repeat
	set theOutput to {}
	tell application "Microsoft PowerPoint" -- work on version 15.15 or newer
		launch
		repeat with i in input
			set t to i as string
			if t ends with ".ppt" or t ends with ".pptx" then
				set pdfPath to my makeNewPath(i)
				open i
				save active presentation in pdfPath as save as PDF -- save in same folder
				set end of theOutput to pdfPath as alias
			end if
		end repeat
	end tell
	tell application "Microsoft Word" -- work on version 15.15 or newer
		launch
		repeat with i in input
			set t to i as string
			if t ends with ".doc" or t ends with ".docx" then
				set pdfPath to my makeNewPath(i)
				open i
				set doc to name of active window
				set theOutputPath to pdfPath
				tell active document
					save as it file name theOutputPath file format format PDF
					close saving no
				end tell
				
			end if
		end repeat
	end tell
	return theOutput
end run

on makeNewPath(f)
	set t to f as string
	if t ends with ".pptx" or t ends with ".docx" then
		return (text 1 thru -5 of t) & "pdf"
	else
		return (text 1 thru -4 of t) & "pdf"
	end if
end makeNewPath
