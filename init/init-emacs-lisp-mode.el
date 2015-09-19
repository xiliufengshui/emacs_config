;; Time-stamp: <naturezhang 2015/09/19 21:01:36>


(add-hook 'emacs-lisp-mode-hook
          '(lambda()
             (company-mode)
             (semantic-mode 0)
             (setq company-backends '(
                                      (
                                       company-yasnippet
                                       company-dabbrev-code
                                       company-elisp
                                       company-keywords
                                       company-files
                                       )))))


(provide 'init-emacs-lisp-mode)
