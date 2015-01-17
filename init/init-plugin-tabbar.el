;;  Time-stamp: <root 09/11/2012 11:18:28>

;; tabbar 标签页 来自王垠
(require 'tabbar)
(tabbar-mode)
(global-set-key (kbd "s-p") 'tabbar-backward-group)
(global-set-key (kbd "s-n") 'tabbar-forward-group)
(global-set-key (kbd "s-b") 'tabbar-backward)
(global-set-key (kbd "s-f") 'tabbar-forward)

(provide 'init_plugin_tabbar)
