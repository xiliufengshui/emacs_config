;; Time-stamp: <root 03/13/2013 17:26:21>

;; w3m 文本网页浏览器
(add-to-list 'load-path "~/emacs_config/plugin/emacs-w3m/")
(require 'w3m)
(setq w3m-default-display-inline-images t)
(setq w3m-home-page "www.baidu.com")

(provide 'init-plugin-w3m)
