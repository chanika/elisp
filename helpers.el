(defun format-buffer ()
    "Indent buffer, fix whitespace"
    (interactive)
    (save-excursion
        (delete-trailing-whitespace)
        (indent-region (point-min) (point-max) nil)
        (untabify (point-min) (point-max))))
