(require 'package)

(setq package-archives '(
			 ("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode t)

(add-to-list 'load-path "/Users/young40/dot/Spacemacs/.emacs.d/use-package")
(add-to-list 'load-path "/Users/young40/dot/Spacemacs/.emacs.d/restart-emacs")
(require 'use-package)
;;(package-install 'use-package)

(use-package company
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-qselect-previous))
  :init
  (global-company-mode t)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0))



(require 'restart-emacs)

(provide 'init-packages)
