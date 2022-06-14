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

(provide 'init-packages)
