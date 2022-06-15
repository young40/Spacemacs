(require 'package)

(setq package-archives
      '(
	("gnu"    . "https://elpa.gnu.org/packages/")
	("nongnu" . "https://elpa.nongnu.org/nongnu/")
	("melpa"  . "https://melpa.org/packages/")
	))
;; 必须在package初始化前设置
(setq package-user-dir (expand-file-name "elpa" *ewc*))

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
	dashboard-projects-backend 'projectile
	dashboard-items '(
			  (recents   . 20)
			  (projects  . 10)
			  (bookmarks . 5)
			  (agenda    . 5)
			  (registers . 5)
			  )
	)
  )

(when *isMacOS*
  (setq mac-command-modifier 'super
	mac-option-modifier  'meta))

(use-package restart-emacs :ensure t :config (setq restart-emacs-restore-frames t))
(global-set-key (kbd "s-0") 'restart-emacs)

(provide 'init-use-package)
