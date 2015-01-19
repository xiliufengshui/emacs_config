;;  Time-stamp: <naturezhang 2015/01/05 19:56:39>

;session.el 可以保存很多东西，例如输入历史(像搜索、打开文件等的输入)、 register 的内容、 buffer 的 local variables 以及 kill-ring 和最近修改的文件列表等。非常有用。

(require 'session)
(add-hook 'after-init-hook
          'session-initialize)
;如果同时在使用 org-mode ，那么有可能造成退出的时候发生死循环而无法 退出的情况，这是因为 org-mode 里面的 org-mark-ring 是一个循环结构，目前可以通过在 session 设置不对他进行保存来解决这个问题：


(add-to-list 'session-globals-exclude
             'org-mark-ring)
;但是这并不是一个解决办法，因为哪个包里面有循环变量这个是不能完全预料到的，最根本的解决办法还是要从 session.el 本身下手。今天我就遇到了两个问题，一个好像是由于 org-mode 里面的另外一个循环变量引起的，还有就是 AucTeX 有关的，也不知道是 AucTeX 的原因还是 session.el 的原因，导致 Emacs 一打开 TeX 文件立即断错误退出，我把 ~/.session 删除之后就没有这个情况了。看来这个扩展还需要继续发展呢。


(provide 'init-plugin-session-desk)
