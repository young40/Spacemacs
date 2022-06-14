(use-package helm
  :ensure t)

(use-package saveplace
  :ensure t
  :hook(after-init . save-place-mode)
  )

;; 文件管理
;; (use-package dired
;;   :ensure t
;;   :bind(( :map dired-mode-map
;; 	  ("i" . dired)
;; 	 )

;; 	)
;;   )

(provide 'init-packages)
