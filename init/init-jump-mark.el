;;  Time-stamp: <naturezhang 2015/01/20 14:34:35>

;;跳转 标记  在两个 之间跳转  C-, C-.
(global-set-key [(control ?\.)] 'ska-point-to-register)
(global-set-key [(control ?\,)] 'ska-jump-to-register)

(defun ska-point-to-register()
  "Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position."
  (interactive)
  ;; (setq zmacs-region-stays t)
  (point-to-register 6))

(defun ska-jump-to-register()
  "Switches between current cursorposition and position
that was stored with ska-point-to-register."
  (interactive)
  ;; (setq zmacs-region-stays t)
  (let ((tmp (point-marker)))
    (jump-to-register 6)
    (set-register 6 tmp)))


(provide 'init-jump-mark)
