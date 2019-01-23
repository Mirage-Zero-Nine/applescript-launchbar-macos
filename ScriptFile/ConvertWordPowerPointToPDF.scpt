-- this script can convert word or powerpoint file to pdf
-- also support batch converting, as long as those files are given as input para in automator/launchbar/finder service

on run {input, parameters}
	set isPPT to 0
	set isWord to 0
	repeat with i in input
		set t to i as string
		if t ends with ".ppt" or t ends with ".pptx" then
			set isPPT to 1
		end if
		if t ends with ".doc" or t ends with ".docx" then
			set isWord to 1
		end if
	end repeat
	set theOutput to {}
	if isPPT is 1 then
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
	end if
	if isWord is 1 then
		tell application "Microsoft Word" -- work on version 15.15 or newer
			launch
			repeat with i in input
				set t to i as string
				if t ends with ".doc" or t ends with ".docx" then
					set pdfPath to my makeNewPath(i)
					open i
					save active document in pdfPath as save as PDF -- save in same folder
					set end of theOutput to pdfPath as alias
				end if
			end repeat
		end tell
	end if
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
