(global-set-key (kbd "<f8>") 'shell)
(global-set-key (kbd "<f7>") 'magit-status)
;; invoke meta-x 
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;; c-mode auto-indent
(add-hook 'c-mode-common-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))
