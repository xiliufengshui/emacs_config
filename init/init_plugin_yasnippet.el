;; Time-stamp: <naturezhang 2015/01/05 19:58:49>

(add-to-list 'load-path "~/emacs_config/plugin/yasnippet-0.6.1c")

(require 'yasnippet) ;; not yasnippet-bundle

(yas/initialize)
(yas/load-directory "~/emacs_config/plugin/yasnippet-0.6.1c/snippets")
