;; Time-stamp: <naturezhang 2015/01/29 14:31:01>

;; 绑定 前缀 c-; for myself
(define-prefix-command 'ctl-\;-map)
(global-set-key (kbd "C-;") 'ctl-\;-map)

;; 绑定 前缀 c-; c-;
;; (define-prefix-command 'ctl-\;ctl-\;-map)
;; (global-set-key (kbd "C-; C-;") 'ctl-\;ctl-\;-map)

(global-set-key (kbd "M-N") 'my-rollwindow-down)
(global-set-key (kbd "M-P") 'my-rollwindow-up)
(global-set-key (kbd "C-; k") 'my-kill-all-buffer)
(global-set-key (kbd "C-; c") 'my-compile)
(global-set-key (kbd "C-; v") 'my-gvim-current-file)
(global-set-key (kbd "C-; O") 'my-smart-open-line-above)
(global-set-key (kbd "C-; o") 'my-smart-open-line)
(global-set-key (kbd "C-; j") 'my-join-line)
(global-set-key (kbd "C-; d") 'my-kill-whole-line)
(global-set-key (kbd "C-; w") 'my-duplicate-current-line-or-region)
;;(global-set-key (kbd "C-; f") 'my-recentf-ido-find-file)
(global-set-key (kbd "C-; p") 'my-switch-to-previous-buffer)
(global-set-key (kbd "C-; e") 'eshell)
(global-set-key (kbd "C-; g") 'my-go-to-char)

;; helm key boundp
(global-set-key (kbd "C-; x") 'helm-M-x)
(global-set-key (kbd "C-; f") 'helm-find-files)
(global-set-key (kbd "C-; b") 'helm-mini)
(global-set-key (kbd "C-; SPC") 'helm-all-mark-rings)
(global-set-key (kbd "C-; r") 'helm-register)
(global-set-key (kbd "C-; s") 'helm-occur)

;; ;; cedet semantic
;; (global-set-key (kbd "C-; C-j") 'semantic-ia-fast-jump)
;; (global-set-key (kbd "C-; j") 'semantic-mrub-switch-tags)
;; (global-set-key (kbd "C-; C-h") 'eassist-switch-h-cpp)
;; ;; (global-set-key (kbd "C-; C-m") 'set-mark-command)
;; (global-set-key (kbd "C-; C-o") 'semantic-tag-folding-fold-all)
;; (global-set-key (kbd "C-; o") 'semantic-tag-folding-show-all)
;; (global-set-key (kbd "C-; C-i") 'semantic-tag-folding-fold-block)
;; (global-set-key (kbd "C-; i") 'semantic-tag-folding-show-block)
;; (global-set-key (kbd "C-; C-f") 'my-fullscreen)
;; (global-set-key (kbd "C-; C-p") 'hs-hide-block)
;; (global-set-key (kbd "C-; p") 'hs-show-block)
;; ;; (global-set-key (kbd "C-; C-'") 'kid-star-dict) ;stardict tooltip 
;; (global-set-key (kbd "C-; C-'") 'kid-sdcv-to-buffer) ;stardict buffer
;; (global-set-key (kbd "C-; '") 'kid-sdcv-to-buffer-input) ;stardict buffer input
;; (global-set-key (kbd "C-; ;") 'my-match-paren) 
;; (global-set-key (kbd "C-; C-/") 'semantic-ia-complete-symbol-menu)
;; (global-set-key (kbd "C-; C-e") 'eshell)
;; (global-set-key (kbd "C-; c") 'my-compile)
;; (global-set-key (kbd "C-; r") 'recentf-open-files-compl)
;; (global-set-key (kbd "C-; C-k") 'my-kill-all-buffer)
;; (define-key global-map (kbd "C-; C-;") 'my-go-to-char)
;; (global-set-key (kbd "C-; v") 'gvim-current-file)

;; ;(global-set-key (kbd "s-i") 'windmove-up)
;; ;(global-set-key (kbd "s-j") 'windmove-down)
;; ;(global-set-key (kbd "s-h") 'windmove-left)
;; ;(global-set-key (kbd "s-k") 'windmove-right)
;; (global-set-key (kbd "C-s-p") 'my-rollwindow-up)
;; (global-set-key (kbd "C-s-n") 'my-rollwindow-down)

;; replace list-buffers with ibuffer  
(global-set-key (kbd "C-x C-b") 'ibuffer)


(provide 'init-binding-key)
