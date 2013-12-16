;; c++-mode
;; set indentation style
(defun my-cc-style()
    (c-set-style "linux")
    (c-set-offset 'innamespace '0)
    (c-set-offset 'inextern-lang '0)
    (c-set-offset 'inline-open '0)
    (c-set-offset 'label '*)
    (c-set-offset 'case-label '*)
    (c-set-offset 'access-label '/)
    (setq c-basic-offset 4)
    (setq tab-width 4)
    (setq indent-tabs-mode nil)
)

(add-hook 'c++-mode-hook 'my-cc-style)

;; .h files open in c++-mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
