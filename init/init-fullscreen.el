;;  Time-stamp: <naturezhang 2015/01/05 19:50:33>

 ;全屏
(defun my-fullscreen ()
(interactive)
;;(x-send-client-message
;;nil 0 nil "_NET_WM_STATE" 32
;;'(2 "_NET_WM_STATE_FULLSCREEN" 0))
(toggle-frame-fullscreen)
)
;;(global-set-key [f12] 'my-fullscreen);F12 全屏

(provide 'init-fullscreen)
