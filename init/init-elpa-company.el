;; Time-stamp: <naturezhang 2015/01/23 14:36:37>

(require-package 'company)

(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-minimum-prefix-length 1)

(defvar company-active-map
  (let ((keymap (make-sparse-keymap)))
    (define-key keymap "\e\e\e" 'company-abort)
    (define-key keymap "\C-g" 'company-abort)
    (define-key keymap (kbd "C-n") 'company-select-next)
    (define-key keymap (kbd "C-p") 'company-select-previous)
    (define-key keymap (kbd "<down>") 'company-select-next-or-abort)
    (define-key keymap (kbd "<up>") 'company-select-previous-or-abort)
    (define-key keymap [down-mouse-1] 'ignore)
    (define-key keymap [down-mouse-3] 'ignore)
    (define-key keymap [mouse-1] 'company-complete-mouse)
    (define-key keymap [mouse-3] 'company-select-mouse)
    (define-key keymap [up-mouse-1] 'ignore)
    (define-key keymap [up-mouse-3] 'ignore)
    (define-key keymap [return] 'company-complete-selection)
    (define-key keymap (kbd "RET") 'company-complete-selection)
    (define-key keymap [tab] 'company-complete-common)
    (define-key keymap (kbd "TAB") 'company-complete-common)
    (define-key keymap (kbd "<f1>") 'company-show-doc-buffer)
    (define-key keymap (kbd "C-h") 'company-show-doc-buffer)
    (define-key keymap "\C-w" 'company-show-location)
    (define-key keymap "\C-s" 'company-search-candidates)
    (define-key keymap "\C-\M-s" 'company-filter-candidates)
    (dotimes (i 10)
      (define-key keymap (read-kbd-macro (format "M-%d" i)) 'company-complete-number))
    keymap)
  "Keymap that is enabled during an active completion.")


(deftheme custom
  "My custom faces that fix some theme annoyances.")

(custom-theme-set-faces
 'custom
 '(company-tooltip ((t :background "lightgray" :foreground "black")))
 '(company-tooltip-selection ((t :background "steelblue" :foreground "white")))
 '(company-tooltip-mouse ((t :background "blue" :foreground "white")))
 '(company-tooltip-common ((t :background "lightgray" :foreground "blue")))
 ;; '(company-tooltip-common-selection ((t t :background "lightgray" :foreground "black")))
 ;; '(company-tooltip-common-selection ((t :background "#4682b3" :foreground "blue")))
 '(company-tooltip-common-selection ((t :background "#5996bf" :foreground "blue")))
 ;; '(company-tooltip-annotation ((t :background "" :foreground "")))
 '(company-scrollbar-fg ((t :background "#939393")))
 '(company-scrollbar-bg ((t :background "gray")))
 '(company-preview ((t :background nil :foreround "darkgray")))
 '(company-preview-common ((t :background nil :foreground "darkgray")))
 ;; '(company-preview-search ((t :background "" :foreground "")))
 )

(add-hook 'emacs-lisp-mode-hook
	  '(lambda()
	     (company-mode)
	     (semantic-mode 0)
	     (setq company-backends '(
				      (
				       company-yasnippet				       
				       company-dabbrev-code
				       company-elisp
				       company-keywords
				       company-files
				       )))))

(add-hook 'python-mode-hook
	  '(lambda()
	     (company-mode)
	     (semantic-mode 0)
	     (setq company-backends '(
				      (
				       company-yasnippet				       
				       company-dabbrev-code
				       ;;company-dabbrev
				       company-keywords
				       company-capf
				       company-files
				       )))))

(add-hook 'c-mode-hook
	  '(lambda()
	     (company-mode)
	     (semantic-mode 1)
	     (setq company-backends '(
				      (
				       company-yasnippet
				       company-dabbrev-code
				       ;;company-dabbrev
				       company-keywords
				       ;;company-clang
				       company-semantic
				       ;;company-cmake
				       )))))

(add-hook 'c++-mode-hook
	  '(lambda()
	     (company-mode)
	     (semantic-mode 1)
	     (setq company-backends '(
				      (
				       company-yasnippet
				       company-dabbrev-code
				       ;;company-dabbrev
				       company-keywords
				       ;;company-clang
				       company-semantic
				       ;;company-cmake
				       )))))

;; company-bbdb
;; company-nxml
;; company-css
;; company-eclim
;; company-semantic
;; company-clang
;; company-xcode
;; company-ropemacs
;; company-cmake
;; company-capf
;; (company-dabbrev-code company-gtags company-etags company-keywords)
;; company-oddmuse
;; company-files
;; company-dabbrev

;; company-abbrev
;; company-autoloads
;; company-bbdb
;; company-capf
;; company-clang
;; company-cmake
;; company-css
;; company-dabbrev-code
;; company-dabbrev
;; company-eclim
;; company-elisp
;; company-etags
;; company-files
;; company-gtags
;; company-ispell
;; company-keywords
;; company-nxml
;; company-oddmuse
;; company-pkg
;; company-pysmell
;; company-ropemacs
;; company-semantic
;; company-template
;; company-tempo
;; company-xcode
;; company-yasnippet


(provide 'init-elpa-company)
