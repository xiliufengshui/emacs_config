;; Time-stamp: <naturezhang 2015/01/30 14:05:37>

(require-package 'exec-path-from-shell)

;; (after-load 'exec-path-from-shell
;;   (dolist (var '("SSH_AUTH_SOCK" "SSH_AGENT_PID" "GPG_AGENT_INFO" "LANG" "LC_CTYPE"))
;;     (add-to-list 'exec-path-from-shell-variables var)))


(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(provide 'init-elpa-exec-path-from-shell)
