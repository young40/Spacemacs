(setq org-config-packages
      '(
        org-mode
        ;; ox-ioslide
        valign))

(defun org-config/post-init-org-mode()
  (use-package org-mode
    :defer t
    :config
    (progn
      ;; (require 'ox-ioslide-helper)
      )
    ))

(defun org-config/init-ox-ioslide()
  (use-package ox-ioslide
    :config
    (require 'ox-ioslide-helper)))

(defun org-config/init-valign()
  (use-package valign
    :config
    (require 'valign)
    (add-hook 'org-mode-hook 'valign-mode)
    )
  )
