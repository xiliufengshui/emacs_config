;; Time-stamp: <naturezhang 2015/09/21 21:20:00>

(require-package 'helm)

(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)

(require 'helm-eshell)
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map (kbd "C-c C-l")  'helm-eshell-history)))

;; (define-key shell-mode-map (kbd "C-c C-l") 'helm-comint-input-ring)
;; (define-key minibuffer-local-map (kbd "C-c C-l") 'helm-minibuffer-history)

;; wirite to ~/emacs_config/init/init-binding-key.el
;; (global-set-key (kbd "C-; x") 'helm-M-x) 

;; optional fuzzy matching for helm-M-x
(setq helm-M-x-fuzzy-match t) 
;; optional fuzzy matching buffer and recentf
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t
      helm-locate-fuzzy-match t)
;; To enable fuzzy matching for both Semantic and Imenu listing
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)
;; helm-apropos To enable fuzzy matching
(setq helm-apropos-fuzzy-match t)
;; execute the command and get a list of completion candidates To enable fuzzy matching
(setq helm-lisp-fuzzy-completion t)

(setq ;helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-split-window-in-side-p t ; open helm buffer inside current window, not occupy whole other window
      helm-ff-file-name-history-use-recentf t)

;; enable man page at point
(add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)

;; key binding
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
;;(global-set-key (kbd "C-x b") 'helm-mini)
;;(global-set-key (kbd "C-x C-f") 'helm-find-files)
;;(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(require-package 'helm-gtags)
(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cg"
;; helm-gtags-suggested-key-mapping t
 )

(require 'helm-gtags)
;; Enable helm-gtags-mode
(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
;;(add-hook 'asm-mode-hook 'helm-gtags-mode)

(define-key helm-gtags-mode-map (kbd "C-c g t") 'helm-gtags-find-tag)
(define-key helm-gtags-mode-map (kbd "C-c g r") 'helm-gtags-find-rtag)
(define-key helm-gtags-mode-map (kbd "C-c g s") 'helm-gtags-find-symbol)
(define-key helm-gtags-mode-map (kbd "C-c g f") 'helm-gtags-find-files)
(define-key helm-gtags-mode-map (kbd "C-c g d") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "C-c g i") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-c g c") 'helm-gtags-create-tags)
(define-key helm-gtags-mode-map (kbd "C-c g p") 'helm-gtags-parse-file)
(define-key helm-gtags-mode-map (kbd "C-c g ,") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c g .") 'helm-gtags-next-history)
(define-key helm-gtags-mode-map (kbd "C-c g SPC") 'helm-gtags-show-stack)
(define-key helm-gtags-mode-map (kbd "C-c g n") 'helm-gtags-find-pattern)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)


(provide 'init-elpa-helm)
