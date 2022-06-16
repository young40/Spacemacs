(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t
	evil-want-keybinding nil
	evil-want-C-u-scroll t)
  :config
  (add-hook 'evil-insert-state-entry-hook (lambda() (setq-local hl-line-mode nil)))
  (add-hook 'evil-visual-state-entry-hook (lambda() (setq-local hl-line-mode nil)))
  (add-hook 'evil-insert-state-exit-hook  (lambda() (hl-line-mode t)))
  (add-hook 'evil-normal-state-entry-hook (lambda() (hl-line-mode t)))
  (evil-mode)
  )

(use-package evil-collection
  :after evil
  :ensure t
  :custom(evil-collection-setup-minibuffer t)
  :init
  (evil-collection-init)
  ;; (evil-collection-init '(dashboard))
  )

(provide 'init-evil)
