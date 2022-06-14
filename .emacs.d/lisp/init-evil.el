(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t)
  :config
  (evil-set-initial-state 'dashboard-mode 'emacs)
  (evil-mode)
  )

(provide 'init-evil)
