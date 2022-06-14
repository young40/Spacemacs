;; (use-package monokai-pro-theme :ensure t :config (load-theme 'monokai-pro t))

(setq monokai-highlight-line "#556B2F")
(use-package monokai-theme :ensure t :config (load-theme 'monokai t))

;; (use-package flucui-themes :ensure t :config (flucui-themes-load-style 'dark))

(use-package rainbow-mode
  :ensure t
  :hook(prog-mode . rainbow-mode)
  )

(use-package rainbow-identifiers
  :ensure t
  :hook(prog-mode . rainbow-identifiers-mode)
  )

;; (use-package powerline-evil
;;   :ensure t
;;   :config
;;   (powerline-default-theme)
  ;; (powerline-evil-center-color-theme)
  ;; (powerline-evil-vim-color-theme)
  ;; (powerline-evil-vim-theme)
  ;; )

;;modeline上显示我的所有的按键和执行的命令
(use-package keycast
  :ensure t
  :init
  (add-to-list 'global-mode-string '("" keycast-mode-line))
  (keycast-mode t)
  )

;; (use-package doom-modeline
;;   :ensure t
;;   :custom-face
;; (mode-line ((t (:height 0.9))))
;; (mode-line-inactive ((t (:height 0.9))))
;;   :init
;;   (doom-modeline-mode t))

;; 高亮TODO
(use-package hl-todo
  :ensure t
  :hook((prog-mode org-mode) . hl-todo-mode)
  )

(add-hook 'prog-mode-hook 'linum-mode)

(provide 'init-ui)
