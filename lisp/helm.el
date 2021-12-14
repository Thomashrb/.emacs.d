(use-package helm
  :commands helm-mode
  :config
  (helm-mode 1)
  (setq helm-buffers-fuzzy-matching t)
  (setq helm-buffer-max-length 40)
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x b") 'helm-mini)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (global-set-key (kbd "C-c p j") 'helm-etags-select))

(use-package helm-ag
  :after (helm-mode))

(use-package helm-swoop
  :config
  (global-set-key (kbd "C-c s") 'helm-swoop)
  (global-set-key (kbd "C-c S") 'helm-multi-swoop-all))

(use-package helm-projectile
  :after (helm-ag)
  :init
  (setq projectile-project-search-path '("~/.emacs.d/"
                                         "~/development/beat"
                                         "~/development/beat/delivery"
                                         "~/development/beat/ingest"
                                         "~/development/beat/stream"
                                         "~/development/beat/ops"
                                         "~/development/rust"
                                         "~/development/python"
                                         "~/development/elixir"
                                         "~/development/bpftrace"
                                         "~/development/pony"
                                         "~/development/scala"
                                         "~/development/clojure"
                                         "~/git"))
  (projectile-discover-projects-in-search-path)
  (global-set-key (kbd "C-c p f") 'helm-projectile)
  (global-set-key (kbd "C-c p p") 'helm-projectile-switch-project)
  (global-set-key (kbd "C-c p b") 'helm-projectile-switch-to-buffer)
  (global-set-key (kbd "C-c p f") 'helm-projectile-find-file)
  (global-set-key (kbd "C-c p k") 'projectile-kill-buffers)
  (global-set-key (kbd "C-c p p") 'helm-projectile-switch-project)
  (global-set-key (kbd "C-c p s") 'helm-projectile-ag)
  (global-set-key (kbd "C-c p r") 'helm-projectile-recentf))

;; list last ran commands first
(use-package smex
  :init
  (smex-initialize))
