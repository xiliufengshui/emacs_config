;; Time-stamp: <naturezhang 2015/01/20 22:27:03>

(require-package 'company)

(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-minimum-prefix-length 1)

(add-hook 'emacs-lisp-mode-hook
	  '(lambda()
	     (company-mode)))


(provide 'init-elpa-company)
