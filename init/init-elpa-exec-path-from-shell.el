;; Time-stamp: <naturezhang 2015/06/14 21:37:25>

(require-package 'exec-path-from-shell)


(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-elpa-exec-path-from-shell)
