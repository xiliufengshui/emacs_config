;; Time-stamp: <naturezhang 2014/12/19 22:32:51>

;; 去重复行
(defun my-uniq-lines (beg end) 
  "Unique lines in region. 
Called from a program, there are two arguments: 
BEG and END (region to sort)." 
  (interactive "r") 
  (save-excursion 
    (save-restriction 
      (narrow-to-region beg end) 
      (goto-char (point-min)) 
      (while (not (eobp)) 
	(kill-line 1) 
	(yank) 
	(let ((next-line (point))) 
	  (while 
	      (re-search-forward 
	       (format "^%s" (regexp-quote (car kill-ring))) nil t) 
	    (replace-match "" nil nil)) 
	  (goto-char next-line)))))) 


(provide 'init-uniq-line)
