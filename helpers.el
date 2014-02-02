(defun format-buffer ()
    (interactive)
    (delete-trailing-whitespace)
    (indent-region (point-min) (point-max) nil))
