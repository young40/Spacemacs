;; (message "init.")

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *isMacOS* (eq system-type 'darwin))
(defconst *ewc* (file-name-as-directory (concat user-emacs-directory "cache")))

(require 'init-use-package)
(require 'init-basic)
(require 'init-packages)

(require 'init-completion)
(require 'init-evil)
(require 'init-tools)
(require 'init-ui)
(require 'init-org)
(require 'init-keybindings)

(require 'org-ox-hugo-auto-export-mode)
(require 'org-auto-export-html-mode)

;; (package-install 'keycast)
;; (keycast-mode t)

;; (package-install 'vertico)
;; (vertico-mode t)

;; (package-install 'orderless)
;; (setq completion-styles '(orderless))

;; (package-install 'marginalia)
;; (marginalia-mode t)

;; (package-install 'embark)
;; (global-set-key (kbd "C-;") 'embark-act)
;; (setq prefix-help-command 'embark-prefix-help-command)

;; (package-install 'consult)
;; (global-set-key (kbd "C-s") 'consult-line)


;; (add-to-list 'load-path "/Users/young40/dot/Spacemacs/.emacs.d/solarized-emacs")
;;(package-install 'solarized-theme)
;;(require 'solarized)
;;(load-theme 'solarized-dark t)


(defun open-init-file()
  (interactive)
  (find-file (concat user-emacs-directory "init.el")))
(global-set-key (kbd "s-e") 'open-init-file)


(set-face-attribute 'default nil :height 160)

;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(add-hook 'dired-mode-hook 'auto-revert-mode)

(setq custom-file (expand-file-name (concat *ewc* "custom.el")))
(load custom-file 'no-error 'no-message)

(provide 'init)
