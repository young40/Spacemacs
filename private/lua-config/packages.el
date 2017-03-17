(setq lua-config-packages
      '(lua-mode))

(defun lua-config/post-init-lua-mode()
  (use-package lua-mode
    :defer t
    :config
    (progn
      (setq lua-indent-level 2)
      (define-key lua-mode-map (kbd "s-r") 'lua-send-buffer)
      )
    ))
