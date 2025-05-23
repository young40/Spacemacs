(eval-when-compile
  (require 'org-tempo))

(use-package org
  ;; :pin melpa
  :ensure t
  :hook(org-mode . (lambda() (toggle-input-method)))
  :config
  ;; (add-hook 'org-mode-hook (lambda ()
			     ;; (local-set-key (kbd "s-r") 'org-hugo-export-to-md) ;; 暂时没什么用
			     ;; ))
  
  (setq org-pretty-entities t
	org-hide-leading-stars t
	org-list-allow-alphabetical t
	)
  (font-lock-add-keywords 'org-mode
                          '(("^ *\\([*]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
  )

(use-package org-contrib
  ;; :pin nongnu
  :ensure t
  )

(setq pyim-chinese-status t)
(defun pyim-chinese-switch()
  (interactive)
  (setq pyim-chinese-status (not pyim-chinese-status))
  (if pyim-chinese-status
      (message "Pyim Chinese: On")
      (message "Pyim Chinese: Off"))
  )
(defun pyim-chinese-probe() (not pyim-chinese-status))

(use-package pyim
  :ensure t
  :init
  (use-package popup
    :ensure t)
  (use-package pyim-basedict
    :ensure t)
  :config
  (pyim-basedict-enable)
  (setq pyim-page-tooltip 'popup)
  (setq pyim-indicator-modeline-string '("中文", "英文"))
  (setq pyim-dcache-directory (expand-file-name "dcache" (expand-file-name "pyim" *ewc*)))
  (setq default-input-method 'pyim)
  (setq pyim-page-length 9)
  (setq pyim-english-input-switch-functions '(pyim-chinese-probe))
  (setq-default pyim-punctuation-translate-p '(no))
  (setq pyim-dicts '(
		     (:name "personal" :file "~/Work/Org/Tool/pyim/personal.words")
		     (:name "搜狗标准"  :file "~/dot/Spacemacs/.emacs.d/pyim/sougou-standard.pyim")
		     ;; (:name "greatdict" :file "~/dot/Spacemacs/pyim-greatdict.pyim")
		     ))
  )

(use-package ox-hugo
  :ensure t
  :after ox
  )

(use-package org-bullets
  :ensure t
  :config
  (progn
    ;; (setq org-bullets-bullet-list '("☯" "✿" "✚" "◉" "❀"))
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode t)))
    )
  )

(use-package evil-org
  :ensure t
  :after org
  ;; :hook(org-mode . (lambda () evil-org-mode))
  :init
  (progn
    (setq evil-org-use-additional-insert t
	  )
    )
  :config
  (require 'evil-org-agenda)
  (evil-org-set-key-theme)
  (add-hook 'org-mode-hook (lambda ()
			     (evil-org-mode)
			     (evil-normalize-keymaps)
			     
			     ))
  )

(use-package org-mac-link
  :ensure nil
  :load-path "third-party" 
  :after org
  :config
  (setq org-mac-grab-Mail-app-p nil
       org-mac-grab-Outlook-app-p nil
       org-mac-grab-devonthink-app-p nil
       org-mac-grab-Addressbook-app-p nil
       org-mac-grab-Firefox-app-p nil
       org-mac-grab-Firefox+Vimperator-p nil
       org-mac-grab-Chrome-app-p nil
       org-mac-grab-Finder-app-p nil
       org-mac-grab-Skim-app-p nil
       )
  :bind
  (:map org-mode-map
	("C-c g" . org-mac-grab-link))
  )

(provide 'init-org)
