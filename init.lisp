;; -*-lisp-*-
;;
;;; My StumpWM configuration.
;; Ensure that quicklisp is loaded in your ~/.sbclrc

(in-package :stumpwm)
;; Prevent having to prefix stumpwm: everytime I use a member of this package.
(setf *default-package* :stumpwm)

;; Set module directory.
;; (set-module-dir "~/.stumpwm.d/modules")

;; Load up my own lisp source files.
(load "~/.stumpwm.d/cppimmo/utils.lisp") ; Utility functions.
(load "~/.stumpwm.d/cppimmo/colors.lisp") ; Colors.
(load "~/.stumpwm.d/cppimmo/theme.lisp") ; Theme setting.
(load "~/.stumpwm.d/cppimmo/placement.lisp") ; Window placement.
;; (load "~/.stumpwm.d/cppimmo/modeline.lisp") ; Modeline format.
(load-module "stump-lock")
(setf stump-lock:*password* "12345")
(load-module "clipboard-history")
(load "~/.stumpwm.d/cppimmo/commands.lisp") ; Commands for keybindings.
(load "~/.stumpwm.d/cppimmo/keybinds.lisp") ; Keybind setting.

(setf *startup-message* "Welcome, Brian!"
	  *window-border-style* :thin
	  *message-window-padding* 2
	  *message-window-y-padding* 2
	  *message-window-gravity* :top-right
	  *input-window-gravity* :top-left
	  *input-history-ignore-duplicates* t
	  *mouse-focus-policy* :sloppy ; Change window focus on click.
	  *float-window-modifier* :SUPER
	  *float-window-border* 2
	  *float-window-title-height* 1
	  *maxsize-border-width* 2
	  *transient-border-width* 2
	  *normal-border-width* 2) 


(load-module "battery-portable")
(ql:quickload "xembed")
(load-module "stumptray")

(setf *window-format* "%m%n%s%c"
	  *screen-mode-line-format* (list "[^b%n^b] %W^> %B | %d     ")
	  *time-modeline-string* "%m/%e/%y %I:%M%p"
	  *mode-line-timeout* 2
	  *mode-line-background-color* "#333333" ; "#bfbfbf"
	  *mode-line-foreground-color* "#f0f0f0" ; "#000000"
	  *mode-line-border-color* "#333333" ; "#bfbfbf" ; #000000
	  *mode-line-border-width* 1)
(enable-mode-line (current-screen) (current-head) t)

(ql:quickload "clx-truetype")
(load-module "ttf-fonts")
(xft:cache-fonts)
(set-font (make-instance 'xft:font
						 :family "Ubuntu Mono"
						 :subfamily "Regular"
						 :size 14
						 :antialias t))
;;(set-font "-xos4-terminus-bold-r-normal-*-17-*-*-*-*-*-*-*")
;;set-font "-misc-ubuntu mono-bold-r-normal-*-17-*-*-*-*-*-*-*")

(set-prefix-key (kbd "s-SPC")) ; Set the prefix key.

;;(load-module "swm-gaps")
;;(setf swm-gaps:*inner-gaps-size* 10)
;;(setf swm-gaps:*outer-gaps-size* 15)

;;; This line needs to be as close to the end of the configuration file as
;;; possible to prevent crashing.
(clipboard-history:start-clipboard-manager)
(stumptray::stumptray)
(setf *tray-win-background* *mode-line-background-color*
	  *tray-viwin-background* *mode-line-background-color*
	  *tray-hiwin-background* *mode-line-background-color*
	  *tray-cursor-color* *mode-line-background-color*)
(load "~/.stumpwm.d/cppimmo/autostart.lisp") ; Startup programs.
