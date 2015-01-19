;;  Time-stamp: <naturezhang 2015/01/06 22:36:56>

(add-to-list 'load-path "~/emacs_config/plugin/emacs-async")
(add-to-list 'load-path "~/emacs_config/plugin/helm")

(require 'helm-config)
(helm-mode 1)

;; (global-set-key (kbd "M-x") 'helm-M-x)
;; optional fuzzy matching for helm-M-x
(setq helm-M-x-fuzzy-match t) 
;; optional fuzzy matching buffer and recentf
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
;; To enable fuzzy matching for both Semantic and Imenu listing
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)
;; helm-apropos To enable fuzzy matching
(setq helm-apropos-function-list t)
;; execute the command and get a list of completion candidates To enable fuzzy matching
(setq helm-lisp-fuzzy-completion t)

;; enable man page at point
(add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)

;; key binding
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(provide 'init-plugin-helm)
