;; Time-stamp: <naturezhang 2015/01/06 01:38:28>

;; 绑定 前缀 c-; for myself

(define-prefix-command 'ctl-\;-map)
(global-set-key (kbd "C-;") 'ctl-\;-map)

;;cedet semantic
(global-set-key (kbd "C-; C-j") 'semantic-ia-fast-jump)
(global-set-key (kbd "C-; j") 'semantic-mrub-switch-tags)
(global-set-key (kbd "C-; C-h") 'eassist-switch-h-cpp)
;(global-set-key (kbd "C-; C-m") 'set-mark-command)
(global-set-key (kbd "C-; C-o") 'semantic-tag-folding-fold-all)
(global-set-key (kbd "C-; o") 'semantic-tag-folding-show-all)
(global-set-key (kbd "C-; C-i") 'semantic-tag-folding-fold-block)
(global-set-key (kbd "C-; i") 'semantic-tag-folding-show-block)
(global-set-key (kbd "C-; C-f") 'my-fullscreen)
(global-set-key (kbd "C-; C-p") 'hs-hide-block)
(global-set-key (kbd "C-; p") 'hs-show-block)
;; (global-set-key (kbd "C-; C-'") 'kid-star-dict) ;stardict tooltip 
(global-set-key (kbd "C-; C-'") 'kid-sdcv-to-buffer) ;stardict buffer
(global-set-key (kbd "C-; '") 'kid-sdcv-to-buffer-input) ;stardict buffer input
(global-set-key (kbd "C-; ;") 'my-match-paren) 
(global-set-key (kbd "C-; C-/") 'semantic-ia-complete-symbol-menu)
(global-set-key (kbd "C-; C-e") 'eshell)
(global-set-key (kbd "C-; c") 'my-compile)
(global-set-key (kbd "C-; r") 'recentf-open-files-compl)
(global-set-key (kbd "C-; C-k") 'my-kill-all-buffer)
(define-key global-map (kbd "C-; C-;") 'my-go-to-char)
(global-set-key (kbd "C-; v") 'gvim-current-file)

;(global-set-key (kbd "s-i") 'windmove-up)
;(global-set-key (kbd "s-j") 'windmove-down)
;(global-set-key (kbd "s-h") 'windmove-left)
;(global-set-key (kbd "s-k") 'windmove-right)
(global-set-key (kbd "C-s-p") 'my-rollwindow-up)
(global-set-key (kbd "C-s-n") 'my-rollwindow-down)

;; semx
;; bind some keys write in ~/emacs_config/config/init_plugin_smex.el
;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; helm
;; bind some keys write in ~/emacs_config/config/init_plugin_helm.el
;; (global-set-key (kbd "M-y") 'helm-show-kill-ring)
;; (global-set-key (kbd "C-x b") 'helm-mini)
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
