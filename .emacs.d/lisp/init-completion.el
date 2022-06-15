(use-package company
  :ensure t
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-select-previous))
  :hook(after-init . global-company-mode)
  :config
  ;; (progn (
  ;; 	  add-hook 'after-init-hook 'global-company-mode
  ;; 	  ))
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0))

;; (icomplete-mode t)

(provide 'init-completion)
