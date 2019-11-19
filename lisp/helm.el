(use-package helm
   :commands helm-mode
   :config
   (helm-mode 1)
   (setq helm-buffers-fuzzy-matching t)
   (setq helm-autoresize-mode t)
   (setq helm-buffer-max-length 40)
   (global-set-key (kbd "M-x") 'helm-M-x)
   (global-set-key (kbd "C-x b") 'helm-mini)
   (global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
   (global-set-key (kbd "C-x C-f") 'helm-find-files)
   (global-set-key (kbd "M-y") 'helm-show-kill-ring))

(use-package helm-swoop
   :config
   (global-set-key (kbd "C-x s") 'helm-swoop)
   (global-set-key (kbd "C-x S") 'helm-multi-swoop-all))

(use-package helm-projectile
   :config
   (global-set-key (kbd "C-c p") 'helm-projectile)
   (global-set-key (kbd "C-c P") 'helm-projectile-switch-project)
   (setq projectile-project-search-path '("~/development/beat" "~/development/beat/delivery" "~/development/rust" "~/development/python" "~/git"))
   (projectile-discover-projects-in-search-path))

(use-package helm-ag
   :config
   (global-set-key (kbd "C-c k") 'helm-ag))
