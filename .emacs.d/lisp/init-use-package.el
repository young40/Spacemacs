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

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package restart-emacs :ensure t)
(global-set-key (kbd "s-0") 'restart-emacs)

(provide 'init-use-package)
