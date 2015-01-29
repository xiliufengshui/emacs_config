;; Time-stamp: <naturezhang 2015/01/29 17:26:50>

(require-package 'projectile)
(require-package 'helm-projectile)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; open files in other projects without ever leaving current working project. 
(setq projectile-switch-project-action 'helm-projectile)
;;(setq projectile-switch-project-action 'helm-projectile-find-file)

;;this can speed up Projectile in Windows significantly. 
;; (setq projectile-indexing-method 'alien)

;; enable cache
;; In case if your project has new files, you have to add C-u before executing any command to invalidate the cache
;; C-c p i to refresh the whole cache.
(setq projectile-enable-caching t)

;; if you have a directory like personal/backup and if you want to ignore directory backup
;; (add-to-list 'projectile-globally-ignored-directories "backup")

;; Switch between files with the same name but different extensions add more
;; (add-to-list 'projectile-other-file-alist '("html" "js")) ;; switch from html -> js
;; (add-to-list 'projectile-other-file-alist '("js" "html")) ;; switch from js -> html

;; C-c p h	helm-projectile	Helm interface to projectile
;; C-c p p	helm-projectile-switch-project	Switches to another projectile project
;; C-c p f	helm-projectile-find-file	Lists all files in a project
;; C-c p F	helm-projectile-find-file-in-known-projects	Find file in all known projects
;; C-c p g	helm-projectile-find-file-dwim	Find file based on context at point
;; C-c p d	helm-projectile-find-dir	Lists available directories in current project
;; C-c p e	helm-projectile-recentf	Lists recently opened files in current project
;; C-c p a	helm-projectile-find-other-file	Switch between files with same name but different extensions
;; C-c p i	projectile-invalidate-cache	Invalidate cache
;; C-c p z	projectile-cache-current-file	Add the file of current selected buffer to cache
;; C-c p b	helm-projectile-switch-to-buffer	List all open buffers in current project
;; C-c p s g	helm-projectile-grep	Searches for symbol starting from project root
;; C-c p s a	helm-projectile-ack	Same as above but using ack 
;; C-c p s s	helm-projectile-ag	Same as above but using ag


(provide 'init-elpa-projectile)
