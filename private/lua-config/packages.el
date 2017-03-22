(setq lua-config-packages
      '(
        lua-mode
        company))

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
