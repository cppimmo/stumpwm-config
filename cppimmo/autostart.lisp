;; -*-lisp-*-
;;
;;; Programs that run on startup.
(in-package :stumpwm)

(run-shell-command "brightnessctl set 15%")
(run-shell-command (format nil "xcompmgr -CcfF -I-.05 -O-.05 -D2 -t-1 -l-3 -r2.~
5 -o.5"))
(run-shell-command "dunst")
(run-shell-command "nm-applet")
(run-shell-command "pasystray")
;; Use feh --bg-scale ~/path/to/file beforehand.
(run-shell-command "~/.fehbg")
(run-shell-command "emacs --daemon")
