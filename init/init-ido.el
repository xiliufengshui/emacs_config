;; Time-stamp: <naturezhang 2015/01/21 16:42:18>

;;使用ido.el emacs 24.1 自带
(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-virtual-buffers t)

;; use ido-ubiquitous
(require-package 'ido-ubiquitous)
(ido-ubiquitous-mode t)

;; use flx-ido fuzzy match
(require-package 'flx-ido)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)



;; sort ido filelist by mtime instead of alphabetically
;;If you want to ensure ‘.’ is not buried by this, change the final lambda as follows (or equivalent):
;;(lambda (x) (and (string-match-p "^\\.." x) x))
(defun ido-sort-mtime ()
  (setq ido-temp-list
	(sort ido-temp-list 
	      (lambda (a b)
		(time-less-p
		 (sixth (file-attributes (concat ido-current-directory b)))
		 (sixth (file-attributes (concat ido-current-directory a)))))))
  (ido-to-end  ;; move . files to end (again)
   (delq nil (mapcar
	      (lambda (x) (and (char-equal (string-to-char x) ?.) x))
	      ido-temp-list))))
(add-hook 'ido-make-file-list-hook 'ido-sort-mtime)
(add-hook 'ido-make-dir-list-hook 'ido-sort-mtime)


(provide 'init-ido)
