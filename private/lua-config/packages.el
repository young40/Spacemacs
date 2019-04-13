(setq lua-config-packages
      '(
        company
        lsp-mode
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

(defun lua-config/post-init-lsp-mode ()
  (use-package lsp-mode
    :ensure t
    :commands lsp
    :hook ((lua-mode) . lsp)
    :config
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
                      ))
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

      (push '(lua-mode "getmetatable" "ipairs" "module" "pairs" "print"
                       "rawequal" "rawget" "rawlen" "rawset" "require"
                       "setmetatable" "tonumber" "tostring" "type" "unpack" "self"
                       "coroutine" "create" "isyieldable" "resume" "running" "status"
                       "wrap" "yield"
                       "math" "abs" "acos" "asin" "atan" "atan2" "ceil" "cos" "cosh"
                       "deg" "exp" "floor" "fmod" "frexp" "huge" "ldexp" "log"
                       "log10" "max" "maxinteger" "min" "mininteger" "modf" "pi"
                       "pow" "rad" "random" "randomseed" "sin" "sinh" "sqrt"
                       "tan" "tanh" "tointeger" "type" "ult"
                       "package" "config" "cpath" "loaded" "loaders" "loadlib" "path"
                       "preload" "searchers" "searchpath" "seeall"
                       "string" "byte" "char" "dump" "find" "format" "gmatch" "gsub"
                       "len" "lower" "match" "pack" "packsize" "rep" "reverse"
                       "sub" "unpack" "upper"
                       "table" "concat" "insert" "maxn" "move" "pack" "remove" "sort"
                       "unpack"
                       ) company-keywords-alist)
      )
    ))

(defun lua-config/post-init-company()
  (spacemacs|add-company-backends :backends company-capf
                                  :modes lua-mode))
