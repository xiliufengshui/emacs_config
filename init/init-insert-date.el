;;  Time-stamp: <naturezhang 2015/01/05 19:52:39>

;; insert-date
(defun my-insert-date ()
  "Insert date at point."
  (interactive)
  (insert (format-time-string "%Y年%m月%e日 %p %l:%M %a")))


(provide 'init-insert-date)
