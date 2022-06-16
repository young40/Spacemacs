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
    :ensure)
  :config
  (setq pyim-page-tooltip 'popup)
  (setq pyim-indicator-modeline-string '("中文", "英文"))
  (setq pyim-dcache-directory (expand-file-name "dcache" (expand-file-name "pyim" *ewc*)))
  (setq default-input-method 'pyim)
  (setq pyim-page-length 9)
  (setq pyim-english-input-switch-functions '(pyim-chinese-probe))
  (setq-default pyim-punctuation-translate-p '(no))
  (setq pyim-dicts '(
		     (:name "greatdict" :file "~/dot/Spacemacs/pyim-greatdict.pyim")
		     ;; (:name "tsinghua"  :file (expand-file-name "pyim-tsinghua-dict.pyim" (expand-file-name "pyim" user-emacs-directory)))
		     ))
  )

(use-package ox-hugo
  :ensure t
  :after org
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

(provide 'init-org)
