;; Time-stamp: <naturezhang 2015/01/21 11:24:50>

(when (maybe-require-package 'flycheck)
  (add-hook 'after-init-hook #'global-flycheck-mode)

  ;; Override default flycheck triggers
  (setq flycheck-check-syntax-automatically '(save idle-change mode-enabled)
        flycheck-idle-change-delay 0.8)

  (setq flycheck-display-errors-function #'flycheck-display-error-messages-unless-error-list))


(provide 'init-elpa-flycheck)
