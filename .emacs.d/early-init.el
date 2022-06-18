;; 会在 init.el 前加载

(setq gc-cons-percentage 1000000000)

(setq package-enable-at-startup nil)

(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; (message "early init.")
