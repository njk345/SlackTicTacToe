tell script "Slack"
	repeat 1000 times
		# set moves to {{0, 0}, {0, 1}, {0, 2}, {1, 0}, {1, 1}, {1, 2}, {2, 0}, {2, 1}, {2, 2}}
		set moves to {1, 2, 3, 4, 5, 6, 7, 8, 9}
		repeat while ((length of moves) > 0)
			set n to (random number from 1 to (count moves))
			set m to (item n of moves)
			# get x and y for move number
			set x to (m - 1) div 3
			set y to (m - 1) mod 3
			# display dialog ((x as string) & ", " & (y as string))
			send message "/tictacmove " & x & " " & y
			# remove nth move from list
			if (count moves) = 1 then
				exit repeat
			end if
			if n = 1 then
				set moves to (items 2 thru -1 of moves)
			else if n = (count moves) then
				set moves to (items 1 thru -2 of moves)
			else
				set moves to ((items 1 thru (n - 1) of moves) & (items (n + 1) thru -1 of moves))
			end if
			#set saveTID to text item delimiters
			#set text item delimiters to ", "
			#set Final to moves as text
			#set text item delimiters to saveTID
			#display dialog Final
			delay 1
		end repeat
	end repeat
end tell
