(defun dashboard-goto-homepage()
  (interactive)
  (switch-to-buffer "*dashboard*")
  )

(defun pyim-export-personal-words-to-file()
  (interactive)
  (pyim-export-personal-words (expand-file-name "personal.words" (expand-file-name "pyim" user-emacs-directory)))
  (message "pyim personal words exported.")
  )


(provide 'init-tools)
