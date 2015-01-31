;; Time-stamp: <naturezhang 2015/01/31 16:39:18>

(require-package 'sr-speedbar)

;;(sr-speedbar-toggle)

(custom-set-variables
 '(speedbar-show-unknown-files t)
)

(setq speedbar-use-images nil)
(setq sr-speedbar-right-side nil)

;; (defadvice delete-other-windows (after my-sr-speedbar-delete-other-window-advice activate)
;;   "Check whether we are in speedbar, if it is, jump to next window."
;;   (let ()
;; 	(when (and (sr-speedbar-window-exist-p sr-speedbar-window)
;;                (eq sr-speedbar-window (selected-window)))
;;       (other-window 1)
;; 	)))
;; (ad-enable-advice 'delete-other-windows 'after 'my-sr-speedbar-delete-other-window-advice)
;; (ad-activate 'delete-other-windows)


(provide 'init-elpa-sr-speedbar)
