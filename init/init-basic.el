;; Time-stamp: <naturezhang 2015/01/22 16:48:58>
;;去掉工具栏
(tool-bar-mode 0)
;;去掉菜单栏
;;(menu-bar-mode 0)
;;关闭启动时开机画面
(setq inhibit-startup-message t)
;;不要滚动栏，现在都用滚轴鼠标了，可以不用滚动栏了
(scroll-bar-mode 0)
;;鼠标指针规避光标
(mouse-avoidance-mode 'animate)

;;自动补全功能，这事从王垠的网站直接Copy过来的，引用一些他对此的说明
;;你可以设置以下 hippie-expand 的补全方式。它是一个优先列表， hippie-expand 会优先使用表最前面的函数来补全
;;这是说，首先使用当前的buffer补全，如果找不到，就到别的可见的窗口里寻找，如果还找不到，那么到所有打开的buffer去找，如果还……那么到kill-ring里，到文件名，到简称列表里，到list，…… 当前使用的匹配方式会在 echo 区域显示。
;;特别有意思的是 try-expand-line，它可以帮你补全整整一行文字。我很多时后有两行文字大致相同，只有几个字不一样，但是我懒得去拷贝粘贴以下。那么我就输入这行文字的前面几个字。然后多按几下 M-/ 就能得到那一行。
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(try-expand-line
	try-expand-line-all-buffers
	try-expand-list
	try-expand-dabbrev
	try-expand-dabbrev-visible
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name
	try-complete-file-name-partially
	try-complete-lisp-symbol
	try-complete-lisp-symbol-partially
	try-expand-whole-kill))

;;时间显示设置
;;启用时间显示设置，在minibuffer上面的那个杠上（忘了叫什么来着）
(display-time-mode 1)

;;(format-time-string "%F")
(setq display-time-format "%F %R %A")
;;时间使用24小时制
;;(setq display-time-24hr-format t)
;;时间显示包括日期和具体时间
;;(setq display-time-day-and-date t)
;;时间的变化频率，单位多少来着？
(setq display-time-interval 30)

;;所有的问题用y/n方式，不用yes/no方式。有点懒，只想输入一个字母
(fset 'yes-or-no-p 'y-or-n-p)
;;允许minibuffer自由变化其大小（指宽度）
(setq resize-mini-windows t)
;;允许自动打开图片，如wiki里面
(auto-image-file-mode)
;;在minibuffer上面可以显示列号
(column-number-mode t)
;;显示默认的文档的宽度，看起来比较舒服？
(setq fill-column 80)
;;当指针到一个括号时，自动显示所匹配的另一个括号
(show-paren-mode 1)
;;设定删除保存记录为200，可以方便以后无限恢复
(setq kill-ring-max 200)
;;增大使用查找函数和变量的寻找范围
(setq apropos-do-all t)
;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)
;;所有的备份文件都放置在~/emacs_config/backup目录下
(setq version-control t)
(setq kept-old-versions 2)
(setq kept-new-versions 5)
(setq delete-old-versions t)
(setq backup-directory-alist '(("." . "~/emacs_config/backup")))
(setq backup-by-copying t)
;;emacs中，改变文件时，默认都会产生备份文件（以~结尾的文件）。可以完全去掉
;;（并不可取），也可以制定备份的方式。这里采用的是，把所有的文件备份都放在一个
;;固定的地方。对于每个备份文件，保留最原始的两个版本和最新的五个版本。
;;并且备份的时候，备份文件是复件，而不是原件。

;;winner mode
;;(winner-mode 1)
;;(global-set-key (kbd "C-x 4 p") 'winner-undo)
;;(global-set-key (kbd "C-x 4 n") 'winner-redo)

;;linum mode
(global-linum-mode 1)

;;设置标题栏 buffer 名字
(setq frame-title-format "%b:%f")

;; prefer utf-8 
(setq prefer-coding-system 'utf-8-unix)
;; save buffer with utf-8-unix
(setq default-buffer-file-coding-system 'utf-8-unix)

;;递归使用minibuffer
(setq enable-recursive-minibuffers t)

;;shell 使用颜色 ls --color  有用
;;(ansi-color-for-comint-mode-on)

;; mapping key bindings 检测系统 如果是mac os 则替换键映射
(when (eq system-type 'darwin) ;; mac specific settings
  (cd "~/")
  (setq mac-option-modifier 'control)
  (setq mac-command-modifier 'meta)
  (setq mac-control-modifier 'super)
  ;;  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )

;; 初始化路径 eshell 窗口最大化
(when (eq system-type 'windows-nt) ;; mac specific settings
  (cd "~/")
  )

(eshell)
(after-load 'init-plugin-color-theme
  ;;set eshell theme color
  (color-theme-blue-eshell))

(toggle-frame-maximized)

(provide 'init-basic)
