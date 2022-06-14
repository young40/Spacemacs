(defun org-ox-hugo-export-wim-to-md-after-save ()
  "Function for `after-save-hook' to run `org-hugo-export-wim-to-md'.

The exporting happens only when Org Capture is not in progress."
    (unless (eq real-this-command 'org-capture-finalize)
      (save-excursion
	(org-hugo-export-wim-to-md)))


    (let ((default-directory "/Users/young40/Work/Young40Blog/tools/OxHugoMarkdownForZhihu/bin/Debug/net6.0/publish")) 
       (shell-command "./OxHugoMarkdownForZhihu")
      )

    (message "ox-hugo export to markdown done.")
  )

(define-minor-mode org-ox-hugo-auto-export-mode
  "Toggle auto exporting the Org file using `ox-hugo'."
  :global nil
  :lighter ""
  (if org-ox-hugo-auto-export-mode
      ;; When the mode is enabled
      (progn
        (add-hook 'after-save-hook #'org-ox-hugo-export-wim-to-md-after-save :append :local))
    ;; When the mode is disabled
    (remove-hook 'after-save-hook #'org-ox-hugo-export-wim-to-md-after-save :local)))

(provide 'org-ox-hugo-auto-export-mode)
