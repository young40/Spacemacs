(setq lua-config-packages
      '(
        company
        lsp-mode
        flycheck
        lua-mode
        ))

(defun company-lua-mode-setup ()
  (setq-local company-backends '(
                                 (
                                  company-lsp
                                  )
                                 ))
  )

(defun lua-config/init-lua-mode ()
  (use-package lua-mode
    :defer t
    :after lsp-mode
    :mode ("\\.lua\\'" . lua-mode)
    :interpreter ("lua" . lua-mode)
    :hook (lua-mode . company-lua-mode-setup)
    :init
    (progn
      (setq lua-indent-level 4
            lua-indent-string-contents t)
      (spacemacs/set-leader-keys-for-major-mode 'lua-mode
        "d" 'lua-search-documentation
        "sb" 'lua-send-buffer
        "sf" 'lua-send-defun
        "sl" 'lua-send-current-line
        "sr" 'lua-send-region))))

(defun lua-config/post-init-company ()
  (add-hook 'lua-mode-hook 'company-mode))

(defun lua-config/post-init-flycheck ()
  (add-hook 'lua-mode-hook (lambda ()
                             (setq flycheck-checker 'lua-luacheck)
                             ))
  )

(defun lua-config/post-init-lsp-mode ()
  (use-package lsp-mode
    :ensure t
    :commands lsp
    :hook ((lua-mode) . lsp)
    :config
    (progn
      (lsp-register-client
       (make-lsp-client :new-connection
                        (lsp-stdio-connection
                         (list
                          "/usr/bin/java"
                          "-cp"
                          "/Users/young40/Work/Lua/EmmyLua-LanguageServer/EmmyLua-LS/build/libs/EmmyLua-LS-all.jar"
                          "com.tang.vscode.MainKt"
                          ))
                        :major-modes '(lua-mode)
                        :server-id 'emmy-lua
                        :ignore-messages '("progressReport" "workspaceFolders")
                      ))
      (define-key evil-normal-state-map (kbd "go") 'lsp-ui-peek-find-definitions)
      (define-key evil-normal-state-map (kbd "gb") 'lsp-ui-peek-jump-backward)
      (define-key evil-normal-state-map (kbd "gh") 'lsp-ui-peek-jump-forward)
    )
    )
  )

(defun lua-config/post-init-company-lsp ()
  (use-package company-lsp
    :ensure t
    :after lsp-mode
    :config
    (setq company-lsp-enable-recompletion t)
    )
    )

(defun lua-config/post-init-lua-mode()
  (use-package lua-mode
    :defer t
    :config
    (progn
      (setq lua-indent-level 4)
      (custom-set-variables
       '(tab-width 4))

      (define-key lua-mode-map (kbd "s-r") 'lua-send-buffer)
      )
    ))
