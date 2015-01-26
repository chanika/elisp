;; hide for more screen space
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; theme
(custom-set-variables
 '(custom-enabled-themes (quote (tango-dark)))
 '(show-paren-mode t))
(custom-set-faces )

;; Start emacs maximized
(defun toggle-fullscreen ()
  (interactive)
  (if (eq system-type 'gnu/linux)
  ((x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
  (w32-send-sys-command 61488)))
(toggle-fullscreen)

;; show column numbers
(column-number-mode)
