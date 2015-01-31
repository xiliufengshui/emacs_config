;; Time-stamp: <naturezhang 2015/01/30 18:48:17>

(require-package 'magit)

;;(defvar magit-emacsclient-executable nil) ; suppress attempt to set default value
(require 'magit)
(set-default 'magit-stage-all-confirm nil)
(add-hook 'magit-mode-hook 'magit-load-config-extensions)

;; full screen magit-status
;; (defadvice magit-status (around magit-fullscreen activate)
;;   (window-configuration-to-register :magit-fullscreen)
;;   ad-do-it
;;   (delete-other-windows))


(provide 'init-elpa-magit)
