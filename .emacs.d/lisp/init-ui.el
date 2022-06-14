;; (use-package monokai-pro-theme :ensure t :config (load-theme 'monokai-pro t))

(setq monokai-highlight-line "#556B2F")
(use-package monokai-theme :ensure t :config (load-theme 'monokai t))

;; (use-package flucui-themes :ensure t :config (flucui-themes-load-style 'dark))


(use-package rainbow-identifiers
  :ensure t
  :init
  (progn (add-hook 'prog-mode-hook 'rainbow-identifiers-mode))
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
;; (package-install 'keycast)
;; (add-to-list 'global-mode-string '("" keycast-mode-line))
;; (keycast-mode t)

;; (use-package doom-modeline
;;   :ensure t
;;   :custom-face
;; (mode-line ((t (:height 0.9))))
;; (mode-line-inactive ((t (:height 0.9))))
;;   :init
;;   (doom-modeline-mode t))

(add-hook 'prog-mode-hook 'linum-mode)

(provide 'init-ui)
