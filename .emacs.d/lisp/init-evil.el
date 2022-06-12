(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode t)

(provide 'init-evil)
