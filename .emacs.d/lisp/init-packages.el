(require 'package)

(setq package-archives '(
			 ("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(package-install 'use-package)

(use-package restart-emacs
  :ensure t)

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))

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
