
(defcommand take-screenshot () ()
			""
			(run-shell-command "scrot -e 'mv $f ~/Pictures/Screenshots' && notify-send \"Screenshot saved.\"")
			(sleep 0.5)
			(message "Screenshot saved."))

(defcommand firefox () ()
			""
			(sb-thread:make-thread (lambda () (run-or-raise "firefox" '(:class "Firefox") t nil))))

(defcommand delete-window-and-frame () ()
			"Delete the current frame with its window."
			(delete-window)
			(remove-split))

(defcommand hsplit-and-focus () ()
			"Create a new frame on the right and focus it."
			(hsplit)
			(move-focus :right))

(defcommand vsplit-and-focus () ()
			"Create a new frame below and move focus to it."
			(vsplit)
			(move-focus :down))

