;; Sidebar with gitmarkers
(use-package git-gutter)

;; Git porcelain
(use-package magit
  :defer t
  :init
  (setq magit-auto-revert-mode nil)
  (global-set-key (kbd "C-c m s") 'magit-status)
  (global-set-key (kbd "C-c m l") 'magit-log)
  (global-git-gutter-mode t)
  :config
  (with-eval-after-load 'magit
    (require 'forge)))

;; Work with Git forges, such as Github and Gitlab, from the comfort of Magit and the rest of Emacs.
;; depends on authinfo
(use-package forge
  :defer t
  :after (magit)
  :config
  (add-to-list 'forge-alist '("gitlab.dev.beat.no" "gitlab.dev.beat.no/api/v4" "gitlab.dev.beat.no" forge-gitlab-repository)))

(use-package keychain-environment
  :init
  (keychain-refresh-environment))
