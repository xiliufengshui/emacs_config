 ;; Time-stamp: <naturezhang 2016/09/09 13:48:46>


(add-hook 'c-mode-hook
          '(lambda()
             (c-set-style "stroustrup")
             (c-toggle-hungry-state 1)
             (hs-minor-mode)
             (company-mode)
             (semantic-mode 1)
             (subword-mode 1)
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
             (subword-mode 1)
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
