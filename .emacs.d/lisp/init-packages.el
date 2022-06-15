;; (use-package helm
;;   :ensure t)

(use-package saveplace
  :ensure t
  :hook(after-init . save-place-mode)
  )

(use-package autorevert
  :ensure t
  :diminish
  :hook(after-init . global-auto-revert-mode)
  )

(use-package ivy
  :ensure t
  :init
  (ivy-mode t)
  :config
  (setq ivy-use-virtual-buffers t
	search-default-mode #'char-fold-to-regexp
	ivy-count-format "(%d/%d) ")
  )

(use-package counsel
  :ensure t)

(use-package amx
  :ensure t
  :init
  (setq amx-save-file (expand-file-name "amx-items" *ewc*))
  :config
  (amx-mode)
  )

(use-package which-key
  :ensure t
  :init(which-key-mode t))

(use-package projectile
  :ensure t
  :init
  (setq projectile-cache-file (expand-file-name "projectile.cache" *ewc*)
	projectile-known-projects-file (expand-file-name "projectile-bookmarks.eld" *ewc*))
  :config
  ;; (setq projectile-mode-line "Projectile")
  (setq projectile-track-known-projects-automatically t))

(use-package counsel-projectile
  :ensure t
  :after (projectile)
  :init (counsel-projectile-mode))

(use-package yasnippet
  :ensure t
  :hook((prog-mode org-mode) . yas-minor-mode)
  :config
  ;; (setq-default yas-snippet-dirs (list (expand-file-name "snippets" user-emacs-directory))) ;; 该目录无需设置即可启用
  (use-package yasnippet-snippets :ensure t)
  )

(provide 'init-packages)
