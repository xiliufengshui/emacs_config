;;  Time-stamp: <naturezhang 2015/01/20 11:33:35>

;;输入左边的括号，就会自动补全右边的部分.包括(), '', [] , {} ,""
(defun my-c-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist '(
			      (?` ?` _ "''")
			      (?\( _ ")")
			      (?\[ _ "]")
			      (?{ \n > _ \n ?} >)
			      (?\" _ "\"")))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "'") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe))


(add-hook 'c-mode-hook 'my-c-mode-auto-pair)
(add-hook 'c++-mode-hook 'my-c-mode-auto-pair)
(add-hook 'emacs-lisp-mode-hook 'my-c-mode-auto-pair)

(provide 'init-brackets-complete)
