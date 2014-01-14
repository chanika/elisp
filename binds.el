(global-set-key (kbd "<f8>") 'shell)
(global-set-key (kbd "<f7>") 'magit-status)
;; invoke meta-x 
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;; c-mode auto-indent
(add-hook 'c-mode-common-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))
;; movement
(global-set-key (kbd "C-i") 'previous-line)
(global-set-key (kbd "C-k") 'next-line)
(global-set-key (kbd "C-j") 'backward-char)
(global-set-key (kbd "C-l") 'forward-char)
;; kill / yank
(global-set-key (kbd "C-o") 'kill-line)
(global-set-key (kbd "C-r") 'backward-kill-word)
;; screen movement
(global-set-key (kbd "C-;") 'other-window)
(global-set-key (kbd "C-m") 'recenter-top-bottom)
;; search
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-s") 'isearch-backward)
;; miscellaneous replacements
(global-set-key (kbd "C-n") 'open-line)
