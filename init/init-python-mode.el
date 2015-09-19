;; Time-stamp: <naturezhang 2015/09/19 21:02:01>


(add-hook 'python-mode-hook
          '(lambda()
             (company-mode)
             ;;(run-python)
             (semantic-mode 0)
             (setq company-backends '(
                                      (
                                       company-yasnippet
                                       company-dabbrev-code
                                       ;;company-dabbrev
                                       company-keywords
                                       company-capf
                                       company-files
                                       )))))

(provide 'init-python-mode)
