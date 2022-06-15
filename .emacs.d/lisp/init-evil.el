(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t
	evil-want-keybinding nil
	evil-want-C-u-scroll t)
  :config
  (evil-mode)
  )

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide 'init-evil)
