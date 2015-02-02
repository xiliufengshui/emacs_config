;; Time-stamp: <naturezhang 2015/02/03 00:38:53>

(require-package 'smartparens)

(smartparens-global-mode t)

(require 'smartparens-config)

;;(setq sp-base-key-bindings 'paredit)
;;(setq sp-autoskip-closing-pair 'always)
;;(setq sp-hybrid-kill-entire-symbol nil)
;;(sp-use-paredit-bindings)


(deftheme custom-smartparens
  "cancel pair overlay highlight.")
;;cancel pair overlay highlight
(custom-theme-set-faces
'custom-smartparens
'(sp-pair-overlay-face ((t :inherit nil)))
)


(provide 'init-elpa-smartparens)
