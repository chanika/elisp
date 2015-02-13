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
      (custom-set-variables
       '(initial-frame-alist (quote ((fullscreen . maximized)))))
  (w32-send-sys-command 61488)))
(toggle-fullscreen)

;; show column numbers
(column-number-mode)
