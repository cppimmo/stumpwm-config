;; -*-lisp-*-
;;
;;; Keybinds

(in-package :stumpwm)
(setf *default-package* :stumpwm)

;; Unbind k (delete) so I don't delete a window accidentally. Use C-k or K instead.
(undefine-key *group-root-map* (kbd "k"))

;; Unbind program keys.
(undefine-key *root-map* (kbd "c")) ; xterm
;; (undefine-key *root-map* (kbd "C-c")) ; xterm
(undefine-key *root-map* (kbd "e")) ; emacs
(undefine-key *root-map* (kbd "C-e")) ; emacs

(define-key *root-map* (kbd "c") "exec urxvt")
(define-key *root-map* (kbd "C-c") "exec xterm")
;; Program bindings.
(defvar *progn-bindings*
  (let ((map (make-sparse-keymap)))
	(define-key map (kbd "a") "exec pavucontrol")
	(define-key map (kbd "e") "exec emacs") 
	(define-key map (kbd "f") "cppimmo-firefox")
	map))
(define-key *root-map* (kbd "e") '*progn-bindings*)
;; So prefix e e for emacs.

;; Power and lock bindings.
(define-key *root-map* (kbd "s-P") "cppimmo-poweroff")
(define-key *root-map* (kbd "s-R") "cppimmo-reboot")
(define-key *root-map* (kbd "s-S") "cppimmo-suspend")
(define-key *root-map* (kbd "s-H") "cppimmo-hibernate")
(define-key *root-map* (kbd "s-L") "cppimmo-lock-screen")
(define-key *root-map* (kbd "/") "cppimmo-program-menu")

;; Function Keys
(define-key *root-map* (kbd "s-F2")  "cppimmo-brightness-down")
(define-key *root-map* (kbd "s-F3")  "cppimmo-brightness-up")
(define-key *root-map* (kbd "s-F6")  "cppimmo-media-previous")
(define-key *root-map* (kbd "s-F7")  "cppimmo-media-play-pause")
(define-key *root-map* (kbd "s-F8")  "cppimmo-media-next")
(define-key *root-map* (kbd "s-F9")  "cppimmo-audio-volume-down")
(define-key *root-map* (kbd "s-F10") "cppimmo-audio-volume-up")
(define-key *root-map* (kbd "s-F11") "cppimmo-audio-volume-mute")

(define-key *root-map* (kbd "s-SunPrint_Screen") "cppimmo-take-screenshot")
