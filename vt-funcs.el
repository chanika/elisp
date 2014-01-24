;;; VirtuTrace custom functions

(defun mvt ()
  (interactive)
  (compile "cd ~/git/virtutrace/build/ && make -j7 && cd -"))

(defun rvt ()
  (interactive)
  (setq currentBuff (buffer-name))
  (switch-to-buffer-other-window (shell "vt-out-shell"))
  (insert "~/git/virtutrace/build/virtutrace/virtutrace $VTDATA/conf/virtutrace-standalone.xml")
  (comint-send-input)
  (switch-to-buffer-other-window currentBuff))
