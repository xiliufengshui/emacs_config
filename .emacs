;;   Time-stamp: <naturezhang 2016/09/24 00:51:52>

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
(require 'init-elpa-sr-speedbar)
(require 'init-elpa-function-args)
(require 'init-elpa-alect-themes)
(require 'init-elpa-molokai-theme)
;; (require 'init-elpa-solarized-theme)


;;----------------------------------------------------------------------------
;; load configs from local
;;----------------------------------------------------------------------------
(require 'init-semantic)
;;(require 'init-sessions)
(require 'init-ido)
(require 'init-basic)
(require 'init-binding-key)
;;(require 'init-brackets-complete)
;;(require 'init-fullscreen)
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
(require 'init-c-mode)
(require 'init-python-mode)
(require 'init-sh-mode)
(require 'init-emacs-lisp-mode)
;; (require 'init-plugin-molokai-theme)

;;----------------------------------------------------------------------------
;; config by emacs 
;;----------------------------------------------------------------------------

;; ;;(mapc 'load (directory-files "~/emacs_config/init"t"\\.el$"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(speedbar-show-unknown-files t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;----------------------------------------------------------------------------
;; just for test
;;----------------------------------------------------------------------------

;;(load-theme 'alect-dark t)
;;(load-theme 'alect-black t)
;;(load-theme 'ample-zen t)
;;(load-theme 'atom-dark t)
;;(load-theme 'base16-ocean t)
;;(load-theme 'calmer-forest t)
