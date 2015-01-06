;; Time-stamp: <naturezhang 2015/01/05 19:57:36> 
(require 'swbuff)
(global-set-key (kbd "C-M-,") 'swbuff-switch-to-previous-buffer)
(global-set-key (kbd "C-M-.") 'swbuff-switch-to-next-buffer)
(setq swbuff-exclude-buffer-regexps 
     '("^ " "\\*.*\\*"))

(setq swbuff-status-window-layout 'scroll)
(setq swbuff-clear-delay 1)
(setq swbuff-separator "|")
(setq swbuff-window-min-text-height 1)

