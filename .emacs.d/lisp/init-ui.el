(use-package monokai-pro-theme :ensure t :config (load-theme 'monokai-pro t))
;; (use-package monokai-theme :ensure t :config (load-theme 'monokai t))

(use-package rainbow-identifiers
  :ensure t
  :init
  (progn (add-hook 'prog-mode-hook 'rainbow-identifiers-mode))
  )

(use-package powerline-evil
  :ensure t
  :config
  (powerline-default-theme)
  ;; (powerline-evil-center-color-theme)
  ;; (powerline-evil-vim-color-theme)
  ;; (powerline-evil-vim-theme)
  )

(add-hook 'prog-mode-hook 'linum-mode)

(provide 'init-ui)
