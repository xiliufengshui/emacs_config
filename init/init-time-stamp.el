;;  Time-stamp: <naturezhang 2015/01/20 15:53:20>

;;时间戳设置(time-stamp)，设定文档上次保存的信息    
(setq time-stamp-active t)    
;;去掉time-stamp的警告？    
(setq time-stamp-warn-inactive t)    
;;将修改时间戳添加到保存文件的动作里。    
(add-hook 'write-file-hooks 'time-stamp)    
;;设置time-stamp的格式，我如下的格式所得的一个例子：<hans 05/18/2004 12:01:12>    
(setq time-stamp-format "%:u %04y/%02m/%02d %02H:%02M:%02S")    


;;{{{ 时间戳设置，插入文档内的
(defun my-insert-timestamp ()
  "Insert the \"Time-stamp: <>\" string at point."
  (interactive)
  (if (interactive-p)
      (insert " Time-stamp: <>")
    " Time-stamp: <>"))
;;}}}


(provide 'init-time-stamp)
