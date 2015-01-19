;; Time-stamp: <naturezhang 2015/01/20 00:45:39>
(require 'recentf)
(recentf-mode 1)

(defun recentf-open-files-compl ()
  (interactive)
  (let* ((all-files recentf-list)
	 (tocpl (mapcar (function 
			 (lambda (x) (cons (file-name-nondirectory x) x))) all-files))
	 (prompt (append '("File name: ") tocpl))
	 (fname (completing-read (car prompt) (cdr prompt) nil nil)))
    (find-file (cdr (assoc-ignore-representation fname tocpl)))))


(provide 'init-recentf)
