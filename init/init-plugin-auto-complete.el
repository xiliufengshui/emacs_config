;;  Time-stamp: <root 09/11/2012 11:14:27>

;; auto complete 自动补全
(add-to-list 'load-path "~/emacs_config/plugin/auto-complete-myself")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs_config/plugin/auto-complete-myself/ac-dict")
(ac-config-default)

(provide 'init-plugin-auto-complete)
