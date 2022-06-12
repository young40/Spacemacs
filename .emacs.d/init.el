(add-to-list 'load-path "~/dot/Spacemacs/.emacs.d/lisp")

(require 'init-basic)
(require 'init-packages)

(require 'init-completion)
(require 'init-evil)
(require 'init-ui)
(require 'init-keybindings)

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


(add-to-list 'load-path "/Users/young40/dot/Spacemacs/.emacs.d/solarized-emacs")
;;(package-install 'solarized-theme)
;;(require 'solarized)
;;(load-theme 'solarized-dark t)


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
