;;  Time-stamp: <naturezhang 2015/01/05 19:53:59>

;; compile
(defun my-compile ()
  "compile shortcut"
  (interactive)
  (delete-other-windows)
  (setq split-width-threshold nil)
;;  (select-window-2)
  (save-some-buffers t nil)
  (compile "cd ../build && make")
;;  (split-window-below)
  (shrink-window (* (/ (window-height) 5) -3))
  (setq split-width-threshold 160)
;  (select-window-2)
;    (select-window-1)
;;  (eshell)
  )


(defun my-rollwindow-down ()
  "roll window down"
  (interactive)
  (scroll-up-line)
  (move-to-window-line nil)
  )


(defun my-rollwindow-up ()
  "roll window up"
  (interactive)
  (scroll-down-line)
  (move-to-window-line nil)
  )


;; kill all buffer
(defun my-kill-all-buffer ()
  "kill all buffer then open eshell buffer"
  (interactive)
  (setq BufferList (buffer-list))
  (delete-other-windows)
  (while (car BufferList)
    (kill-buffer (car BufferList))
    (setq BufferList (cdr BufferList))
    )
  (setq BufferList (buffer-list))
  (while (car BufferList)
    (kill-buffer (car BufferList))
    (setq BufferList (cdr BufferList))
    )
  (cd "~/")
  (eshell)
  )

;; open gvim 
(defun gvim-current-file ()
  (interactive)
  (let (fname progName cmdStr)
    (setq fname (buffer-file-name))
    (setq progName "/usr/bin/gvim")
    (setq cmdStr (concat progName " \"" fname "\""))
    (if progName
      (progn
        (message "Gvim Running...")
        (shell-command cmdStr)
	)
      )
    )
  )
