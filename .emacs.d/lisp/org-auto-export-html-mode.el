(defun org-auto-export-html-to-file-after-save()
  (org-html-export-to-html)
  )

(define-minor-mode org-auto-export-html-mode
  "Org auto export HTML."
  :global nil
  :lighter ""
  (if org-auto-export-html-mode
      (progn
	(add-hook 'after-save-hook #'org-auto-export-html-to-file-after-save :append :local)
	)

    (remove-hook 'after-save-hook #'org-auto-export-html-to-file-after-save :local)
      )

  )

(provide 'org-auto-export-html-mode)
