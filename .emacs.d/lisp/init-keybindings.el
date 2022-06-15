(use-package general
  :ensure t)

(general-create-definer my-leader-def
  ;; :prefix my-leader
  :prefix "SPC")

(my-leader-def 'normal
  "`"   'counsel-M-x
  "q"   'counsel-M-x

  "bb"  'ivy-switch-buffer
  "SPC" 'ivy-switch-buffer
  "bh"  'dashboard-goto-homepage

  "cl"  'comment-line

  "ff"  'counsel-find-file

  "hk"  'describe-key
  "hv"  'describe-variable

  "pp"  'counsel-projectile-switch-project
  "pk"  'projectile-kill-buffers

  "rr"  'eval-defun

  "tm"  'toggle-frame-maximized
  )

(global-set-key (kbd "s-c") 'kill-ring-save)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-v") 'yank)
(global-set-key (kbd "s-z") 'undo)

(defun split-window-h-focus()
  (interactive)
  (split-window-right)
  (windmove-right)
  )

(defun split-window-v-focus()
  (interactive)
  (split-window-below)
  (windmove-down)
  )

(global-set-key (kbd "s-d") 'split-window-h-focus)
(global-set-key (kbd "s-D") 'split-window-v-focus)
(global-set-key (kbd "s-.") 'evil-window-next)
(global-set-key (kbd "s-。") 'evil-window-next)
(global-set-key (kbd "s-w") 'delete-window)

(global-set-key (kbd "s-/") 'comment-line)

(global-set-key (kbd "s-k") 'pyim-chinese-switch)

(define-key y-or-n-p-map [return] 'act)

(eval-after-load "dired" '(progn
			    (define-key dired-mode-map (kbd "i") 'dired-up-directory)
			    ))

(provide 'init-keybindings)
