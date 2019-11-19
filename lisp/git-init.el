;; Sidebar with gitmarkers
(use-package git-gutter)

(use-package magit-gitflow
  :config
  (add-hook 'magit-mode-hook 'turn-on-magit-gitflow))

;; Git porcelain
(use-package magit
  :defer t
  :init
  (setq magit-auto-revert-mode nil)
  (global-set-key (kbd "C-c m s") 'magit-status)
  (global-set-key (kbd "C-c m l") 'magit-log)
  (global-git-gutter-mode t))
