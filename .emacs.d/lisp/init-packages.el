(use-package helm
  :ensure t)

(use-package saveplace
  :ensure t
  :hook(after-init . save-place-mode)
  )

(use-package autorevert
  :ensure t
  :diminish
  :hook(after-init . global-auto-revert-mode)
  )

(provide 'init-packages)
