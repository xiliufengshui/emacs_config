;; Time-stamp: <naturezhang 2015/01/27 15:17:18>

(require-package 'smartparens)

(smartparens-global-mode t)

(require 'smartparens-config)

;;(setq sp-base-key-bindings 'paredit)
;;(setq sp-autoskip-closing-pair 'always)
;;(setq sp-hybrid-kill-entire-symbol nil)
;;(sp-use-paredit-bindings)

;;cancel pair overlay highlight
(custom-theme-set-faces
 'custom
 '(sp-pair-overlay-face ((t :inherit nil)))
 )


(provide 'init-elpa-smartparens)
