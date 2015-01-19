;; Time-stamp: <naturezhang 2015/01/05 19:51:38>

(defun my-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `my-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (backward-char 1)
  (while (char-equal (read-char)
		     char)
    (forward-char 1)
    (search-forward (string char) nil nil n)
    (backward-char 1))
  (setq unread-command-events (list last-input-event)))

(provide 'init-go-to-char)
