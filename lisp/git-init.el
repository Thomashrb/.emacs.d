;; Magit
;  Magit requres cl-lib but it wont install automaticaly on windows
(use-package cl-lib
  :ensure t)

;; Git porcelain
(use-package magit
  :ensure t
  :config
  (setq magit-auto-revert-mode nil)
  (global-set-key (kbd "C-c m s") 'magit-status)
  (global-set-key (kbd "C-c m l") 'magit-log))

;; Sidebar with gitmarkers
(use-package git-gutter
  :ensure t)
(global-git-gutter-mode t)
