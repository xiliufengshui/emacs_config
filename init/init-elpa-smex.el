;; Time-stamp: <naturezhang 2015/01/21 00:10:39>

(require-package 'smex)

(require 'smex)
(smex-initialize)

;; bind some keys
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(provide 'init-elpa-smex)
