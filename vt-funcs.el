;;; VirtuTrace custom functions

(defun mvt ()
  (interactive)
  (compile "cd ~/git/virtutrace/build/ && make -j7 && cd -"))
