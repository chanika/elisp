(global-set-key (kbd "<f8>") 'shell)
(global-set-key (kbd "<f7>") 'magit-status)
;; invoke meta-x 
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;; c-mode auto-indent
(add-hook 'c-mode-common-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))
;; movement
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
;; kill / yank
(global-set-key (kbd "C-r") 'backward-kill-word)
;; screen movement
(global-set-key (kbd "C-p") 'other-window)
;; search
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-s") 'isearch-backward)
(define-key isearch-mode-map (kbd "C-f") 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "C-s") 'isearch-repeat-backward)
;; file/buffer operations
;;(global-set-key (kbd "C-p") 'find-file)
(global-set-key (kbd "C-b") 'switch-to-buffer)
;; web-mode
(add-hook 'web-mode-hook '(lambda ()
  (local-set-key (kbd "\C-c\C-v") 'browse-url-of-buffer)))
;; miscellaneous
(global-set-key (kbd "C-n") 'keyboard-quit)
