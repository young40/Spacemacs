(use-package general
  :ensure t)

(general-create-definer my-leader-def
  ;; :prefix my-leader
  :prefix "SPC")

(my-leader-def 'normal
  "SPC" 'helm-M-x
  "bb" 'helm-mini
  )

(provide 'init-keybindings)
