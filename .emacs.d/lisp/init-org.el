(require 'org-tempo)

(use-package org
  ;; :pin melpa
  :ensure t
  :hook(org-mode . (lambda() (toggle-input-method)))
  :config
  (setq org-pretty-entities t)
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
  :config
  (setq default-input-method 'pyim)
  (setq pyim-page-length 9)
  (setq pyim-english-input-switch-functions '(pyim-chinese-probe))
  )

(use-package ox-hugo
  :ensure t
  :after org
  )

(provide 'init-org)
