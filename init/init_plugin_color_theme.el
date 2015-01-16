;;  Time-stamp: <naturezhang 2015/01/05 19:54:38>


(add-to-list 'load-path "~/emacs_config/plugin/color-theme-6.6.0/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
    ;; (color-theme-hober)
     )
  )

;(color-theme-blue-mood)			;蓝色
;(color-theme-classic)			;经典 蓝绿色
;(color-theme-gray30)			;褐色
;(color-theme-sitaramv-solaris)		;蓝底 白字
;(color-theme-xemacs)			;灰白底
;(color-theme-subtle-hacker)		;青色 底
;(color-theme-pok-wog)			;青褐色

(provide 'init_plugin_color_theme)
