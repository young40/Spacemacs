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

(use-package helm)
(use-package restart-emacs :ensure t)

(use-package saveplace
  :ensure t
  :hook(after-init . save-place-mode)
  )

(provide 'init-packages)
