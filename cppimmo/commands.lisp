
(defcommand take-screenshot () ()
			(run-shell-command "scrot -e 'mv $f ~/Pictures/Screenshots' && notify-send \"Screenshot saved.\"")
			(sleep 0.5)
			(message "Screenshot saved."))

