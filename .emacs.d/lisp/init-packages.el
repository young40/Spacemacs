(require 'package)

(setq package-archives
      '(
	("gnu" . "https://elpa.gnu.org/packages/")
	("melpa" . "https://melpa.org/packages/")
	))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(provide 'init-packages)
