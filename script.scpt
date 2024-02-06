-- Define the number of times to perform the action
set numberOfActions to 50
-- Function to simulate a click on an element by name, in case you need it
-- on clickElementByName(elementName)
--	tell application "Safari"
--		tell front document
--			do JavaScript "var element = document.querySelector('[title=\"" & elementName & "\"]');
--                             if (element) {
--                                 element.click();
--                             };" in front document
--		end tell
--	end tell
--	delay 1
-- end clickElementByName


tell application "Google Chrome"
	-- Replace 'YourWebpageURL' with the URL of your webpage
	open location "https://chat.openai.com/"
	delay 5
end tell

-- Main loop to perform the action multiple times
repeat numberOfActions times
	--Simulate move mouse over three dots supposed location
	do shell script "/opt/homebrew/bin/cliclick m:198,600"
	delay 0.2
	
	-- Simulate clicking on the three dots
	tell application "System Events"
		click at {198, 600}
	end tell
	delay 0.2
	
	-- Simulate clicking on "Delete chat"
	tell application "System Events"
		click at {300, 730}
	end tell
	delay 0.2
	
	-- Simulate clicking on "Delete"
	tell application "System Events"
		click at {920, 600}
	end tell
	delay 1.5
	
	
end repeat

