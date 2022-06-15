;; (server-mode t)

(electric-pair-mode t)
(show-paren-mode t)

;; (delete-selection-mode 1)
(global-hl-line-mode 1)

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)

(fset 'yes-or-no-p 'y-or-n-p)

(savehist-mode t)

(setq recentf-save-file (expand-file-name "recentf" *ewc*))
(setq bookmark-file (expand-file-name "bookmarks" *ewc*))

(provide 'init-basic)
