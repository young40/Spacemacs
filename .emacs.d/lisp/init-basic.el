;; (server-mode t)

(electric-pair-mode t)
(show-paren-mode t)

;; (delete-selection-mode 1)
;; (global-hl-line-mode 1)

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)

(fset 'yes-or-no-p 'y-or-n-p)

(savehist-mode t)

(setq recentf-save-file (expand-file-name "recentf" *ewc*))
(setq bookmark-file (expand-file-name "bookmarks" *ewc*))
(setq save-place-file (expand-file-name "places" *ewc*))
(setq savehist-file (expand-file-name "savehist-file-history" *ewc*))
(setq auto-save-list-file-prefix (expand-file-name ".save-" (expand-file-name "auto-save-list" *ewc*)))
(setq package-user-dir (expand-file-name "elpa" *ewc*))

(provide 'init-basic)
