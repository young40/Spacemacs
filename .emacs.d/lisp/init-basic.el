(server-mode t)

(electric-pair-mode t)
(show-paren-mode t)

(delete-selection-mode 1)
(global-hl-line-mode 1)

(global-auto-revert-mode t)
(setq auto-save-default nil)
(setq make-backup-files nil)

(fset 'gnus-yes-or-no-p 'y-or-n-p)

(provide 'init-basic)