;; Time-stamp: <naturezhang 2015/09/19 21:02:06>


(add-hook 'sh-mode-hook
          '(lambda()
             (company-mode)
             (semantic-mode 0)
             (setq company-backends '(
                                      (
                                       company-yasnippet
                                       company-dabbrev-code
                                       company-keywords
                                       company-files
                                       )))))


(provide 'init-sh-mode)
