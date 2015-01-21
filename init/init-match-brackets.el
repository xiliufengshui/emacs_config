;;  Time-stamp: <naturezhang 2015/01/20 14:37:08>

;;{{{ 使用%就可以上下翻动,匹配的括号
;;如果没有括号就输入%
;;这个由王垠创作
(defun my-match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %.
Argument ARG paren."
  (interactive "p")
  (cond (
	 (looking-at "\\s\(")
	 (forward-list 1)
	 (backward-char 1))
	(
	 (looking-at "\\s\)")
	 (forward-char 1)
	 (backward-list 1))))


(provide 'init-match-brackets)
