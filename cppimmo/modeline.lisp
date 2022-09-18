;; -*-lisp-*-
;;; Modeline configuration.

(in-package :stumpwm)
(setf *default-package* :stumpwm)

;;(setf *group-format* "[%t]"
;;	  *window-format* "%n: %30t")
;;(setf *mode-line-timeout* 2
;;	  *time-modeline-string* "%F %H:%M")
(setf *mode-line-timeout* 2)

(load "~/.stumpwm.d/cppimmo/colors.lisp")

(setf *mode-line-background-color* cppimmo-color-background
	  *mode-line-foreground-color* cppimmo-color-foreground
	  *mode-line-border-color* cppimmo-color-background
	  *mode-line-border-width* 0)
