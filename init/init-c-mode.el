 ;; Time-stamp: <naturezhang 2015/09/19 22:26:57>


(add-hook 'c-mode-hook
          '(lambda()
             (c-set-style "stroustrup")
             (c-toggle-hungry-state 1)
             (hs-minor-mode)
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
             (c-set-style "stroustrup")
             (c-toggle-hungry-state 1)
             (hs-minor-mode)
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
