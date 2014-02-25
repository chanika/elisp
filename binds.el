(global-set-key (kbd "<f8>") 'shell)
(global-set-key (kbd "<f7>") 'magit-status)
(global-set-key (kbd "<f9>") 'format-buffer)
(global-set-key (kbd "RET") 'newline-and-indent)
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
(global-set-key (kbd "C-M-j") 'backward-word)
(global-set-key (kbd "C-M-l") 'forward-word)
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
(defun my-web-mode-key-bindings ()
    (local-set-key (kbd "\C-c\C-v") 'browse-url-of-buffer)
    (local-set-key (kbd "RET") 'newline-and-indent)
    (local-unset-key (kbd "\C-c\C-m"))
    (local-set-key (kbd "\C-c\C-e") 'web-mode-mark-and-expand))
(add-hook 'web-mode-hook 'my-web-mode-key-bindings)
;; js2-mode
(defun my-js2-key-bindings ()
    (local-unset-key (kbd "M-j")))
(add-hook 'js2-mode-hook 'my-js2-key-bindings)
;; miscellaneous
(global-set-key (kbd "C-n") 'keyboard-quit)
(global-unset-key (kbd "\C-x\C-c"))
(global-set-key (kbd "\C-x\C-k") 'save-buffers-kill-terminal)
