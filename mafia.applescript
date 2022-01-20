tell script "Slack"
	repeat 1000
		send message "/tictacmove 0 0"
		delay 1
		send message "/tictacmove 0 1"
		delay 1
		send message "/tictacmove 1 0"
		delay 1
		send message "/tictacmove 1 1"
		delay 1
		send message "/tictacmove 2 0"
		delay 1
	end repeat
end tell
