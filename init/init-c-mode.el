 ;; Time-stamp: <naturezhang 2015/09/19 21:01:49>


(add-hook 'c-mode-hook
          '(lambda()
             (company-mode)
             (semantic-mode 1)
             (setq company-backends '(
                                      (
                                       company-yasnippet
                                       company-dabbrev-code
                                       ;;company-dabbrev
                                       company-keywords
                                       ;;company-clang
                                       company-semantic
                                       company-c-headers
                                       ;;company-cmake
                                       )))))

(add-hook 'c++-mode-hook
          '(lambda()
             (company-mode)
             (semantic-mode 1)
             (setq company-backends '(
                                      (
                                       company-yasnippet
                                       company-dabbrev-code
                                       ;;company-dabbrev
                                       company-keywords
                                       ;;company-clang
                                       company-semantic
                                       company-c-headers
                                       ;;company-cmake
                                       )))))

(provide 'init-c-mode)
