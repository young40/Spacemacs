(setq lua-config-packages
      '(lua-mode))

(defun lua-config/post-init-lua-mode()
  (use-package lua-mode
    :defer t
    :config
    (progn
      (setq lua-indent-level 2)
      (spacemacs/set-leader-keys-for-major-mode 'lua-mode "r" 'lua-send-buffer)
      )
    ))
