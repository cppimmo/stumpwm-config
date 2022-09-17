;; -*-lisp-*-
;;
;; My StumpWM configuration.

;; Specify how quicklisp should initialize.
;;(let ((quicklisp-init (merge-pathnames ".quicklisp/setup.lisp"
;;									   (user-homedir-pathname))))
;;  (when (probe-file quicklisp-init)
;;	(load quicklisp-init)))

(in-package :stumpwm)
;; Prevent having to prefix stumpwm: everytime I use a member of this package.
(setf *default-package* :stumpwm)

;; Set module directory?
;; (set-module-dir "/usr/share/stumpwm/contrib/")

;; Load up my own lisp source files.
(load "~/.stumpwm.d/cppimmo/utils.lisp")
(load "~/.stumpwm.d/cppimmo/colors.lisp")
(load "~/.stumpwm.d/cppimmo/theme.lisp")
(load "~/.stumpwm.d/cppimmo/placement.lisp")
;; (load "~/.stumpwm.d/cppimmo/modeline.lisp")
(load "~/.stumpwm.d/cppimmo/commands.lisp")
(load "~/.stumpwm.d/cppimmo/keybinds.lisp")

(setf *startup-message* "Welcome, Brian!"
	  *window-border-style* :thin
	  *message-window-padding* 3
	  *message-window-y-padding* 3
	  *message-window-gravity* :top-right
	  *input-window-gravity* :top-left
	  *input-history-ignore-duplicates* t
	  *mouse-focus-policy* :click ; Change window focus on click.
	  *float-window-modifier* :SUPER
	  *float-window-border* 3
	  *float-window-title-height* 1
	  *maxsize-border-width* 3
	  *transient-border-width* 3
	  *normal-border-width* 3) 

(setf *window-format* "%m%n%s%c"
	  *screen-mode-line-format* (list "[^B%n^b] %W^>%d")
	  *time-modeline-string* "%d-%b-%Y %T"
	  *mode-line-timeout* 2)
(enable-mode-line (current-screen) (current-head) t)

;;(ql:quickload "clx-truetype")
;;(load-module "ttf-fonts")
;;(xft:cache-fonts)
;;(set-font (make-instance 'xft:font
;;						 :family "Ubuntu Mono"
;;						 :subfamily "Regular"
;;						 :size 12
;;						 :antialias t))
 (set-font "-xos4-terminus-bold-r-normal-*-17-*-*-*-*-*-*-*")
;; (set-font "-misc-ubuntu mono-bold-r-normal-*-17-*-*-*-*-*-*-*")

;; Set the prefix key.
(set-prefix-key (kbd "s-SPC"))

(run-shell-command "brightnessctl set 15%")
(run-shell-command (format nil "xcompmgr -CcfF -I-.05 -O-.05 -D2 -t-1 -l-3 -r2.~
5 -o.5"))
(run-shell-command "dunst")
(run-shell-command "nm-applet")
(run-shell-command "pasystray")
;; Use feh --bg-scale ~/path/to/file beforehand.
(run-shell-command "~/.fehbg")
