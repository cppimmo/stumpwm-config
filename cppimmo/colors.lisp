;; -*-lisp-*-

(in-package :stumpwm)
(setf *default-package* :stumpwm)

;; Foreground:   #a5a2a2
;; Background:   #090300
;; CursorColor:  #a5a2a2
(defvar cppimmo-color-foreground "#a5a2a2")
(defvar cppimmo-color-background "#090300")
(defvar cppimmo-color-cursor "#a5a2a2")

;; Black
(defvar cppimmo-color0 "#090300")
(defvar cppimmo-color8 "#5c5855")

;; Red
(defvar cppimmo-color1 "#db2d20")
(defvar cppimmo-color9 "#db2d20")

;; Green
(defvar cppimmo-color2 "#01a252")
(defvar cppimmo-color10 "#01a252")

;; Yellow
(defvar cppimmo-color3 "#fded02")
(defvar cppimmo-color11 "#fded02")

;; Blue
(defvar cppimmo-color4 "#01a0e4")
(defvar cppimmo-color12 "#01a0e4")

;; Magenta
(defvar cppimmo-color5 "#a16a94")
(defvar cppimmo-color13 "#a16a94")

;; Cyan
(defvar cppimmo-color6 "#b5e4f4")
(defvar cppimmo-color14 "#b5e4f4")

;; White
(defvar cppimmo-color7 "#a5a2a2")
(defvar cppimmo-color15 "#f7f7f7")

(setq *colors*
	  `(,cppimmo-color1 ; 0 Black
		,cppimmo-color11 ; 1 Red
		,cppimmo-color14 ; 2 Green
		,cppimmo-color13 ; 3 Yellow
		,cppimmo-color10 ; 4 Blue
		,cppimmo-color14 ; 5 Magenta
		,cppimmo-color8 ; 6 Cyan
		,cppimmo-color5)) ; 7 White

(when *initializing*
  (update-color-map (current-screen)))
