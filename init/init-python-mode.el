;; Time-stamp: <naturezhang 2015/09/22 23:44:33>


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
                                       ;; 下面的需要 run_python
                                       ;; company-capf
                                       company-files
                                       )))))

(provide 'init-python-mode)
