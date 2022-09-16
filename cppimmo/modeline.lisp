;; -*-lisp-*-

(setf *group-format* "%t"
	  *window-format* "%n: %30t"
	  *mode-line-timeout* 2
	  *time-modeline-string* "%F %H:%M")

(load "~/.stumpwm.d/cppimmo/colors.lisp")

(setf *mode-line-background-color* cppimmo-color-background
	  *mode-line-foreground-color* cppimmo-color-foreground
	  *mode-line-border-color* cppimmo-color-background
	  *mode-line-border-width* 0)
