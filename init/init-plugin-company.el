;; Time-stamp: <naturezhang 2015/01/20 14:43:30>

(add-to-list 'load-path "~/emacs_config/plugin/company-mode")

(autoload 'company-mode "company" nil t)

;; (require 'company)
;; (add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-minimum-prefix-length 1)

;; (setq company-backends (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)

(add-hook 'c++-mode-hook 
	  '(lambda()
	     (company-mode)
	     (eval-after-load 'company
	       '(add-to-list 'company-backends 'company-irony))

	     ;; (optional) adds CC special commands to `company-begin-commands' in order to
	     ;; trigger completion at interesting places, such as after scope operator
	     ;;     std::|
	     (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
	     ;;	     (setq company-backends (delete 'company-semantic company-backends))
	     ;;	     (define-key c-mode-map  [(tab)] 'company-complete)
	     ;;	     (define-key c++-mode-map  [(tab)] 'company-complete)
	     )
	  )

(add-hook 'c-mode-hook 
 	  '(lambda()
	     (company-mode)
	     (eval-after-load 'company
	       '(add-to-list 'company-backends 'company-irony))

	     ;; (optional) adds CC special commands to `company-begin-commands' in order to
	     ;; trigger completion at interesting places, such as after scope operator
	     ;;     std::|
	     (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
	     ;;	     (setq company-backends (delete 'company-semantic company-backends))
	     ;;	     (define-key c-mode-map  [(tab)] 'company-complete)
	     ;;	     (define-key c++-mode-map  [(tab)] 'company-complete)
	     )
	  ) 

(add-hook 'python-mode-hook
	  '(lambda()
	     ;;	     (company-mode)
	     ;;	     (run-python)
	     (anaconda-mode)
	     ;;	     (add-to-list 'company-backends 'company-anaconda)
	     )
	  )

(add-hook 'emacs-lisp-mode-hook
	  '(lambda()
	     (company-mode)
	     )
	  )

(provide 'init-plugin-company)
