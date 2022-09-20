
(defcommand cppimmo/poweroff () ()
			""
			(run-shell-command "exec sudo /sbin/poweroff"))

(defcommand cppimmo/reboot () ()
			""
			(run-shell-command "exec sudo /sbin/reboot"))

(defcommand cppimmo/suspend () ()
			""
			(run-shell-command "exec sudo /usr/bin/loginctl suspend"))

(defcommand cppimmo/hibernate () ()
			""
			(run-shell-command "exec sudo /usr/bin/loginctl hibernate"))

(defcommand cppimmo/program-menu () ()
			""
			(run-shell-command "exec rofi -modi run -show run"))

(defcommand cppimmo/brightness-down () ()
			""
			(run-shell-command "exec brightnessctl set 5%-"))

(defcommand cppimmo/brightness-up () ()
			""
			(run-shell-command "exec brightnessctl set +5%"))

(defcommand cppimmo/media-previous () ()
			""
			(run-shell-command "exec playerctl -a previous"))

(defcommand cppimmo/media-play-pause () ()
			""
			(run-shell-command "exec playerctl -a play-pause"))

(defcommand cppimmo/media-previous () ()
			""
			(run-shell-command "exec playerctl -a next"))

(defcommand cppimmo/audio-volume-down () ()
			""
			(run-shell-command "exec pactl set-sink-volume @DEFAULT_SINK@ -5%"))

(defcommand cppimmo/audio-volume-up () ()
			""
			(run-shell-command "exec pactl set-sink-volume @DEFAULT_SINK@ +5%"))

(defcommand cppimmo/audio-volume-mute () ()
			""
			(run-shell-command "exec pactl set-sink-mute @DEFAULT_SINK@ toggle"))

(defcommand cppimmo/take-screenshot () ()
			""
			(run-shell-command "scrot -e 'mv $f ~/Pictures/Screenshots' && notify-send \"Screenshot saved.\"")
			(sleep 0.5)
			(message "Screenshot saved."))

(defcommand cppimmo/lock-screen () ()
			""
			(run-shell-command "exec xlock -mode blank -password \"What's the password? \" -username \"What's my name again? \" -timeout 10 -font \"terminus\""))

(defcommand cppimmo/firefox () ()
			""
			(sb-thread:make-thread (lambda () (run-or-raise "firefox" '(:class "Firefox") t nil))))

(defcommand cppimmo/delete-window-and-frame () ()
			"Delete the current frame with its window."
			(delete-window)
			(remove-split))

(defcommand cppimmo/hsplit-and-focus () ()
			"Create a new frame on the right and focus it."
			(hsplit)
			(move-focus :right))

(defcommand cppimmo/vsplit-and-focus () ()
			"Create a new frame below and move focus to it."
			(vsplit)
			(move-focus :down))

