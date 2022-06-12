(require 'package)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(package-install 'use-package)

(message "ok")

(provide 'init-packages)
