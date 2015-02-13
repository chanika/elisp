;; all modes

(setq-default indent-tabs-mode nil)

(use-package magit
    :ensure t)

;; c-mode
(defun my-c-style()
    (c-set-style "linux")
    (setq c-basic-offset 4)
    (setq indent-tabs-mode nil)
    (setq tab-width 4))

(add-hook 'c-mode-hook 'my-c-style)

;; c++-mode
;; set indentation style
(defun my-c++-style()
    (c-set-style "linux")
    (c-set-offset 'innamespace '0)
    (c-set-offset 'inextern-lang '0)
    (c-set-offset 'inline-open '0)
    (c-set-offset 'inclass '+)
    (c-set-offset 'access-label '-)
    (c-set-offset 'label '*)
    (c-set-offset 'case-label '*)
    (setq c-basic-offset 4)
    (setq tab-width 4)
    (setq indent-tabs-mode nil))

(add-hook 'c++-mode-hook 'my-c++-style)

;; .h files open in c++-mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;CEDET

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
;;(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)

(use-package semantic
    :ensure t)
;;(semantic-mode 1)

;; ;; Imenu integration
(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)

;; Class suggest improvement
(defun my-c-mode-cedet-hook ()
 (local-set-key "." 'semantic-complete-self-insert)
 (local-set-key ">" 'semantic-complete-self-insert))
;;(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

;;;; Semantic and auto-config integratio
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20131128.233/")    ; This may not be appeared if you have already added.
(use-package auto-complete
    :ensure t)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;;(ac-config-default)
;;(define-key ac-mode-map [(meta return)] 'auto-complete)

(defun my-cedet-hook ()
  (add-to-list 'ac-sources 'ac-source-semantic))
;;(add-hook 'c-mode-common-hook 'my-cedet-hook)

;; web-mode

(use-package web-mode
    :ensure t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

(setq web-mode-enable-current-element-highlight t)

(defun my-web-mode-settings-hook ()
  (setq web-mode-code-indent-offset 4))
(add-hook 'web-mode-hook 'my-web-mode-settings-hook)

;; SVN

(use-package dsvn
    :ensure t)

;; EDiff

(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; nxml-mode

(defun my-nxml-mode-hook()
  (setq nxml-slash-auto-complete-flag t)
  (setq nxml-child-indent 4)
  (local-unset-key (kbd "\C-c\C-m")))
(add-hook 'nxml-mode-hook 'my-nxml-mode-hook)
