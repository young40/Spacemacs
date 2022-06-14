(require 'package)

(setq package-archives
      '(
	("gnu"    . "https://elpa.gnu.org/packages/")
	("nongnu" . "https://elpa.nongnu.org/nongnu/")
	("melpa"  . "https://melpa.org/packages/")
	))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(assq-delete-all 'org package--builtins)
(assq-delete-all 'org package--builtin-versions)

(unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(eval-when-compile
  (require 'use-package-ensure))
(setq use-package-always-ensure t)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-center-content t
	dashboard-show-shortcuts t
	dashboard-items '(
			  (recents   . 20)
			  (bookmarks . 5)
			  ;; (projects  . 10)
			  (agenda    . 5)
			  (registers . 5)
			  )
	)
  )

;; TODO 检查系统是否为macOS
(setq mac-command-modifier 'super
      mac-option-modifier  'meta)

(use-package restart-emacs :ensure t)
(global-set-key (kbd "s-0") 'restart-emacs)

(provide 'init-use-package)
