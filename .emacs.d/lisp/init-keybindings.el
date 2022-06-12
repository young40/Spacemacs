(use-package general
  :ensure t)

(general-create-definer my-leader-def
  ;; :prefix my-leader
  :prefix "SPC")

(my-leader-def 'normal
  "SPC" 'helm-M-x
  "bb" 'helm-mini
  )

(setq mac-option-modifier 'meta
      mac-command-modifier 'super)

(define-key evil-normal-state-map (kbd "C-j") (lambda () (interactive) (evil-scroll-down nil)))
(define-key evil-normal-state-map (kbd "C-k") (lambda () (interactive) (evil-scroll-up   nil)))

(global-set-key (kbd "s-c") 'kill-ring-save)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-v") 'yank)
(global-set-key (kbd "s-z") 'undo)
(global-set-key (kbd "s-r") 'restart-emacs)

(global-set-key (kbd "s-d") 'split-window-horizontally)
(global-set-key (kbd "s-D") 'split-window-vertically)
(global-set-key (kbd "s-.") 'evil-window-next)
(global-set-key (kbd "s-w") 'delete-window)


(provide 'init-keybindings)
