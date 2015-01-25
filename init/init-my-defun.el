;;  Time-stamp: <naturezhang 2015/01/25 02:32:20>

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
  ;;  (eshell)
  )

(defun my-rollwindow-down ()
  "roll window down"
  (interactive)
  (scroll-up-line)
  (move-to-window-line nil))

(defun my-rollwindow-up ()
  "roll window up"
  (interactive)
  (scroll-down-line)
  (move-to-window-line nil))

;; kill all buffer
(defun my-kill-all-buffer ()
  "kill all buffer then open eshell buffer"
  (interactive)
  (setq BufferList (buffer-list))
  (delete-other-windows)
  (while (car BufferList)
    (kill-buffer (car BufferList))
    (setq BufferList (cdr BufferList)))
  (setq BufferList (buffer-list))
  (while (car BufferList)
    (kill-buffer (car BufferList))
    (setq BufferList (cdr BufferList)))
  (cd "~/")
  (eshell))

;; open gvim 
(defun my-gvim-current-file ()
  (interactive)
  (let (fname progName cmdStr)
    (setq fname (buffer-file-name))
    (setq progName "/usr/bin/vim")
    (setq cmdStr (concat progName " \"" fname "\""))
    (if progName
	(progn
	  (message "Gvim Running...")
	  (shell-command cmdStr)
	  )
      )
    )
  )

;; add provide to the file at end
(defun my-insert-provide ()
"add provide at end of file"
  (interactive)
  (insert "(provide '"(file-name-nondirectory buffer-file-name)")")
  (backward-char 4)
  (delete-char 3)
)

;; copy from Bozhidar Batsov 
(defun my-smart-open-line-above ()
  "Insert an empty line above the current line.
Position the cursor at it's beginning, according to the current mode."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

;; copy from Bozhidar Batsov 
(defun my-smart-open-line (arg)
  "Insert an empty line after the current line.
Position the cursor at its beginning, according to the current mode.
With a prefix ARG open line above the current line."
  (interactive "P")
  (if arg
      (my-smart-open-line-above)
    (progn
      (move-end-of-line nil)
      (newline-and-indent))))

;; copy from Bozhidar Batsov 
(defun my-join-line ()
  "Join the current line with the line beneath it."
  (interactive)
  (delete-indentation 1))

;; copy from Bozhidar Batsov 
(defun my-kill-whole-line (&optional arg)
  "A simple wrapper around command `kill-whole-line' that respects indentation.
Passes ARG to command `kill-whole-line' when provided."
  (interactive "p")
  (kill-whole-line arg)
  (back-to-indentation))

;; copy from Bozhidar Batsov 
(defun my-indent-defun ()
  "Indent the current defun."
  (interactive)
  (save-excursion
    (mark-defun)
    (indent-region (region-beginning) (region-end))))

;; copy from Bozhidar Batsov 
(defun my-get-positions-of-line-or-region ()
  "Return positions (beg . end) of the current line
or region."
  (let (beg end)
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active
        (exchange-point-and-mark))
    (setq end (line-end-position))
    (cons beg end)))

(defun my-duplicate-current-line-or-region (arg)
  "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated.  However, if
there's a region, all lines that region covers will be duplicated."
  (interactive "p")
  (pcase-let* ((origin (point))
               (`(,beg . ,end) (my-get-positions-of-line-or-region))
               (region (buffer-substring-no-properties beg end)))
    (-dotimes arg
      (lambda (n)
        (kill-ring-save beg end)
        )
      )
    ))

;; copy from prelude
(defun my-recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: "
                                   (-map 'abbreviate-file-name recentf-list)
                                   nil t)))
    (when file
      (find-file file))))

;; copy from Bozhidar Batsov 
(defun my-switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; copy from Bozhidar Batsov 
(defun my-kill-other-buffers ()
  "Kill all buffers but the current one.
Doesn't mess with special buffers."
  (interactive)
  (-each
   (->> (buffer-list)
     (-filter #'buffer-file-name)
     (--remove (eql (current-buffer) it)))
   #'kill-buffer))

(defvar my-tips
  '("Press <C-c o> to open a file with external program."
    "Press <C-c p f> to navigate a project's files with ido."
    "Press <C-c p s g> to run grep on a project."
    "Press <C-c p p> to switch between projects."
    "Press <C-=> to expand the selected region."
    "Press <C-c g> to search in Google."
    "Press <C-c G> to search in GitHub."
    "Press <C-c y> to search in YouTube."
    "Press <C-c U> to search in DuckDuckGo."
    "Press <C-c r> to rename the current buffer and the file it's visiting if any."
    "Press <C-c t> to open a terminal in Emacs."
    "Press <C-c k> to kill all the buffers, but the active one."
    "Press <C-x g> to run magit-status."
    "Press <C-c D> to delete the current file and buffer."
    "Press <C-c s> to swap two windows."
    "Press <S-RET> or <M-o> to open a line beneath the current one."
    "Press <s-o> to open a line above the current one."
    "Press <C-c C-z> in a Elisp buffer to launch an interactive Elisp shell."
    "Press <C-Backspace> to kill a line backwards."
    "Press <C-S-Backspace> or <s-k> to kill the whole line."
    "Press <f11> to toggle fullscreen mode."
    "Press <f12> to toggle the menu bar."
    "Explore the Tools->Prelude menu to find out about some of Prelude extensions to Emacs."
    "Access the official Emacs manual by pressing <C-h r>."
    "Visit the EmacsWiki at http://emacswiki.org to find out even more about Emacs."))

(defun my-tip-of-the-day ()
  "Display a random entry from `my-tips'."
  (interactive)
  (unless (window-minibuffer-p)
    ;; pick a new random seed
    (random t)
    (message
     (concat "my tip: " (nth (random (length my-tips)) my-tips)))))

;; find char 
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


(provide 'init-my-defun)
