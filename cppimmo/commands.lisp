
(defcommand cppimmo/cmd-poweroff () ()
			""
			(run-shell-command "exec sudo /sbin/poweroff"))

(defcommand cppimmo/cmd-reboot () ()
			""
			(run-shell-command "exec sudo /sbin/reboot"))

(defcommand cppimmo/cmd-suspend () ()
			""
			(run-shell-command "exec sudo /usr/bin/loginctl suspend"))

(defcommand cppimmo/cmd-hibernate () ()
			""
			(run-shell-command "exec sudo /usr/bin/loginctl hibernate"))

(defcommand cppimmo/cmd-program-menu () ()
			""
			(run-shell-command "exec rofi -modi run -show run"))

(defcommand cppimmo/cmd-brightness-down () ()
			""
			(run-shell-command "exec brightnessctl set 5%-"))

(defcommand cppimmo/cmd-brightness-up () ()
			""
			(run-shell-command "exec brightnessctl set +5%"))

(defcommand cppimmo/cmd-media-previous () ()
			""
			(run-shell-command "exec playerctl -a previous"))

(defcommand cppimmo/cmd-media-play-pause () ()
			""
			(run-shell-command "exec playerctl -a play-pause"))

(defcommand cppimmo/cmd-media-previous () ()
			""
			(run-shell-command "exec playerctl -a next"))

(defcommand cppimmo/cmd-audio-volume-down () ()
			""
			(run-shell-command "exec pactl set-sink-volume @DEFAULT_SINK@ -5%"))

(defcommand cppimmo/cmd-audio-volume-up () ()
			""
			(run-shell-command "exec pactl set-sink-volume @DEFAULT_SINK@ +5%"))

(defcommand cppimmo/cmd-audio-volume-mute () ()
			""
			(run-shell-command "exec pactl set-sink-mute @DEFAULT_SINK@ toggle"))

(defcommand cppimmo/cmd-take-screenshot () ()
			""
			(run-shell-command "scrot -e 'mv $f ~/Pictures/Screenshots' && notify-send \"Screenshot saved.\"")
			(sleep 0.5)
			(message "Screenshot saved."))

(defcommand cppimmo/cmd-lock-screen () ()
			""
			(run-shell-command "exec xlock -mode blank -password \"What's the password? \" -username \"What's my name again? \" -timeout 10 -font \"terminus\""))

(defcommand cppimmo/cmd-firefox () ()
			""
			(sb-thread:make-thread (lambda () (run-or-raise "firefox" '(:class "Firefox") t nil))))

(defcommand cppimmo/cmd-delete-window-and-frame () ()
			"Delete the current frame with its window."
			(delete-window)
			(remove-split))

(defcommand cppimmo/cmd-hsplit-and-focus () ()
			"Create a new frame on the right and focus it."
			(hsplit)
			(move-focus :right))

(defcommand cppimmo/cmd-vsplit-and-focus () ()
			"Create a new frame below and move focus to it."
			(vsplit)
			(move-focus :down))

