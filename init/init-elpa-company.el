;; Time-stamp: <naturezhang 2015/01/23 03:23:30>

(require-package 'company)

(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-minimum-prefix-length 1)

;;(define-key company-mode-map (kbd "C-n") 'company-select-next)
;;(define-key company-mode-map (kbd "C-p") 'company-select-previous)

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
