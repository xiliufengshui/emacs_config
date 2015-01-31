;;   Time-stamp: <naturezhang 2015/01/31 00:59:31>

;; init file
(add-to-list 'load-path "~/emacs_config/init")
(add-to-list 'load-path "~/emacs_config/plugin")

(require 'init-benchmarking) ;; Measure startup time from purcell
(require 'init-packages) 
(require 'init-elpa-exec-path-from-shell)


;;----------------------------------------------------------------------------
;; download plugin from elpa
;;----------------------------------------------------------------------------
(require 'init-elpa-company)
(require 'init-elpa-window-numbering)
(require 'init-elpa-yasnippet)
(require 'init-elpa-smex)
(require 'init-elpa-flycheck)
(require 'init-elpa-smartparens)
(require 'init-elpa-expand-region)
(require 'init-elpa-dired)
(require 'init-elpa-golden-ratio)
;;(require 'init-elpa-highlight-symbol)
(require 'init-elpa-magit)
(require 'init-elpa-helm)
(require 'init-elpa-projectile)
;;(require 'init-elpa-ggtags)
;;(require 'init-elpa-sr-speedbar)


;;----------------------------------------------------------------------------
;; load configs from local
;;----------------------------------------------------------------------------
;;(require 'init-sessions)
(require 'init-ido)
(require 'init-basic)
(require 'init-binding-key)
;;(require 'init-brackets-complete)
(require 'init-fullscreen)
;;(require 'init-gnus)
(require 'init-insert-copyright)
(require 'init-insert-date)
(require 'init-jump-mark)
(require 'init-match-brackets)
(require 'init-my-defun)
;;(require 'init-plugin-auto-complete)
;;(require 'init-plugin-cedet-ecb-cscope)
(require 'init-plugin-color-theme)
;;(require 'init-plugin-company)
;;(require 'init-plugin-helm)
;;(require 'init-plugin-session-desk)
;;(require 'init-plugin-smex)
;;(require 'init-plugin-swbuff)
;;(require 'init-plugin-tabbar)
;;(require 'init-plugin-w3m)
;;(require 'init-plugin-web-mode)
;;(require 'init-plugin-window-numbering)
;;(require 'init-plugin-yasnippet-old)
;;(require 'init-plugin-yasnippet)
;;(require 'init-recentf)
;;(require 'init-stardict)
(require 'init-time-stamp)
(require 'init-uniq-line)

;;----------------------------------------------------------------------------
;; config by emacs 
;;----------------------------------------------------------------------------

;;(mapc 'load (directory-files "~/emacs_config/init"t"\\.el$"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(helm-external-programs-associations (quote (("el" . "vi"))))
 '(session-use-package t nil (session)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "DeepSkyBlue1")))))
