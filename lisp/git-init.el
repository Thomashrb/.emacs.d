;; Magit
;  Magit requres cl-lib but it wont install automaticaly on windows
;(use-package cl-lib
;  :ensure t)

;; Sidebar with gitmarkers
(use-package git-gutter
  :ensure t
  :defer t)

;; Git porcelain
(use-package magit
  :ensure t
  :defer t
  :init
  (setq magit-auto-revert-mode nil)
  (global-set-key (kbd "C-c m s") 'magit-status)
  (global-set-key (kbd "C-c m l") 'magit-log)
  (global-git-gutter-mode t))
