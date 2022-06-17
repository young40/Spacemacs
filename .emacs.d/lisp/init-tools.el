(defun dashboard-goto-homepage()
  (interactive)
  (switch-to-buffer "*dashboard*")
  )

(defun pyim-export-personal-words-to-file()
  (interactive)
  (let ((pyim-dir (expand-file-name "pyim" "~/Work/Org/Tool/")))
    (let ((pyim-personal-file (expand-file-name "personal.words" pyim-dir))
	  (pyim-words-counts  (expand-file-name "words.counts"   pyim-dir)))
      (pyim-export-personal-words   pyim-personal-file)
      (pyim-export-words-and-counts pyim-words-counts)))
  
  (message "pyim personal words exported.")
  )

(defun pyim-import-personal-words-from-file()
  (interactive)
  (let ((pyim-dir (expand-file-name "pyim" "~/Work/Org/Tool/")))
    (let ((pyim-words-counts  (expand-file-name "words.counts"   pyim-dir)))
      (pyim-import-words-and-counts pyim-words-counts)))

  (message "pyim personal words imported.")
  )

(provide 'init-tools)
