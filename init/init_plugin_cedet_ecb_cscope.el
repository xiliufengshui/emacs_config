;;  Time-stamp: <root 12/04/2012 15:31:52>


;(add-to-list 'load-path "~/emacs_config/plugin/cedet-1.1/common/")
;(require 'cedet)

(add-hook 'c++-mode-hook 
	  '(lambda()
	     (hs-minor-mode)
 	     (c-set-style "K&R")
;; ;	     (c-toggle-auto-state 1)
	     (c-toggle-hungry-state 1)
	     
	     (load-file "~/emacs_config/plugin/cedet-1.1/common/cedet.elc")
	     (global-ede-mode 1)
	     (semantic-load-enable-excessive-code-helpers)
	     (semantic-load-enable-semantic-debugging-helpers)
	     (global-srecode-minor-mode 1)
	     (require 'semantic-ia)
	     (require 'semantic-gcc)
	     ;;(semantic-mru-bookmark-mode)  ;; 已经开启了 在一次 就关闭了
	     (global-semantic-stickyfunc-mode) ;;关闭最上面的那个 显示  因为 tabbar 要用
	     (global-semantic-tag-folding-mode) ;;折叠
	     (add-to-list 'load-path	"~/emacs_config/plugin/ecb-2.40/")
	     (require 'ecb)
	     (setq stack-trace-on-error nil)
	     (require 'xcscope)
	     )
	  )


 (add-hook 'c-mode-hook 
 	  '(lambda()
 	     (hs-minor-mode)
;; ; 	     (c-toggle-auto-state 1)
 	     (c-toggle-hungry-state 1)
  	     (c-set-style "K&R")
  	     )
  	  ) 


					;(ecb-activate)
					;(ecb-byte-compile)
					;(setq ecb-tip-of-the-day nil)
					;(setq inhibit-startup-message t)



