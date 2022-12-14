;; -*-lisp-*-
;;
;;; Keybinds

(in-package :stumpwm)
(setf *default-package* :stumpwm)

;; Unbind k (delete) so I don't delete a window accidentally. Use C-k or K instead.
(undefine-key *group-root-map* (kbd "k"))

;; Unbind program keys.
;; (undefine-key *root-map* (kbd "c")) ; xterm
;; (undefine-key *root-map* (kbd "C-c")) ; xterm
;; (undefine-key *root-map* (kbd "e")) ; emacs
;; (undefine-key *root-map* (kbd "C-e")) ; emacs

;; Program bindings.
(defvar *progn-bindings*
  (let ((map (make-sparse-keymap)))
	(define-key map (kbd "c") "exec urxvt")
	(define-key map (kbd "x") "exec xterm") ; xterm as backup.
	(define-key map (kbd "a") "exec pavucontrol")
	(define-key map (kbd "e") "exec runemacs") ; exec emacs.
	(define-key map (kbd "f") "cppimmo/cmd-firefox")
	(define-key map (kbd "s") "exec seamonkey")
	map))
(define-key *root-map* (kbd "e") '*progn-bindings*)
;; So prefix e e for emacs.

;; Power and lock bindings.
(define-key *root-map* (kbd "s-p") "cppimmo/cmd-poweroff")
(define-key *root-map* (kbd "s-r") "cppimmo/cmd-reboot")
(define-key *root-map* (kbd "s-s") "cppimmo/cmd-suspend")
(define-key *root-map* (kbd "s-h") "cppimmo/cmd-hibernate")
(define-key *root-map* (kbd "s-l") "lock-screen")
(define-key *root-map* (kbd "/") "cppimmo/cmd-program-menu")

;; Function Keys
(define-key *root-map* (kbd "s-F2")  "cppimmo/cmd-brightness-down")
(define-key *root-map* (kbd "s-F3")  "cppimmo/cmd-brightness-up")
(define-key *root-map* (kbd "s-F6")  "cppimmo/cmd-media-previous")
(define-key *root-map* (kbd "s-F7")  "cppimmo/cmd-media-play-pause")
(define-key *root-map* (kbd "s-F8")  "cppimmo/cmd-media-next")
(define-key *root-map* (kbd "s-F9")  "cppimmo/cmd-audio-volume-down")
(define-key *root-map* (kbd "s-F10") "cppimmo/cmd-audio-volume-up")
(define-key *root-map* (kbd "s-F11") "cppimmo/cmd-audio-volume-mute")

(define-key *root-map* (kbd "SunPrint_Screen") "cppimmo/cmd-take-screenshot")

(define-key *root-map* (kbd "C-y") "show-clipboard-history")

(define-key *root-map* (kbd "M-r") "loadrc")
