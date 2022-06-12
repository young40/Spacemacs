(add-to-list 'load-path "~/dot/Spacemacs/.emacs.d/lisp")

(require 'init-basic)
(require 'init-packages)

(require 'init-completion)
(require 'init-evil)

(use-package restart-emacs
  :ensure t)

(package-install 'keycast)
(keycast-mode t)

(package-install 'vertico)
(vertico-mode t)

(package-install 'orderless)
(setq completion-styles '(orderless))

(package-install 'marginalia)
(marginalia-mode t)

(package-install 'embark)
(global-set-key (kbd "C-;") 'embark-act)
(setq prefix-help-command 'embark-prefix-help-command)

(package-install 'consult)
(global-set-key (kbd "C-s") 'consult-line)


(package-install 'monokai-theme)
(load-theme 'monokai 1)

(add-to-list 'load-path "/Users/young40/dot/Spacemacs/.emacs.d/solarized-emacs")
;;(package-install 'solarized-theme)
;;(require 'solarized)
;;(load-theme 'solarized-dark t)

(setq mac-option-modifier 'meta
      mac-command-modifier 'super)

(global-set-key (kbd "s-c") 'kill-ring-save)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-v") 'yank)
(global-set-key (kbd "s-z") 'undo)
(global-set-key (kbd "s-r") 'restart-emacs)

(global-set-key (kbd "s-d") 'split-window-horizontally)
(global-set-key (kbd "s-D") 'split-window-vertically)
(global-set-key (kbd "s-.") 'evil-window-next)
(global-set-key (kbd "s-w") 'delete-window)

;;(icomplete-mode 1)


(defun open-init-file()
  (interactive)
  (find-file "/Users/young40/dot/Spacemacs/.emacs.d/init.el"))
(global-set-key (kbd "s-e") 'open-init-file)



(set-face-attribute 'default nil :height 160)

;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(setq custom-file (expand-file-name "/Users/young40/dot/Spacemacs/.emacs.d/custom.el"))
(load custom-file 'no-error 'no-message)

(provide 'init)
