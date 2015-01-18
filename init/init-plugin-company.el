;; Time-stamp: <naturezhang 2015/01/19 02:29:50>

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
	     (setq company-backends (delete 'company-semantic company-backends))
;;	     (define-key c-mode-map  [(tab)] 'company-complete)
;;	     (define-key c++-mode-map  [(tab)] 'company-complete)
	     )
	  )


 (add-hook 'c-mode-hook 
 	  '(lambda()
	     (company-mode)
	     (setq company-backends (delete 'company-semantic company-backends))
;;	     (define-key c-mode-map  [(tab)] 'company-complete)
;;	     (define-key c++-mode-map  [(tab)] 'company-complete)
  	     )
  	  ) 

(add-hook 'python-mode-hook
	  '(lambda()
	     (company-mode)
;;	     (add-to-list 'company-backends 'company-anaconda)
	   )
)


(provide 'init-plugin-company)
