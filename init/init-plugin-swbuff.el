;; Time-stamp: <naturezhang 2015/01/20 15:03:44> 
(require 'swbuff)
(global-set-key (kbd "<C-S-tab>") 'swbuff-switch-to-previous-buffer)
(global-set-key (kbd "<C-tab>") 'swbuff-switch-to-next-buffer)
(setq swbuff-exclude-buffer-regexps 
      '("^ " "\\*.*\\*"))
(setq swbuff-status-window-layout 'adjust)
(setq swbuff-clear-delay 1)
(setq swbuff-separator "|")
(setq swbuff-window-min-text-height 1)


(provide 'init-plugin-swbuff)
