;; Sidebar with gitmarkers
(use-package git-gutter)

;; https://oremacs.com/2015/01/17/setting-up-ediff/
(defmacro csetq (variable value)
  `(funcall (or (get ',variable 'custom-set)
                'set-default)
            ',variable ,value))

(use-package ediff
  :defer t
  :init
  (winner-mode)
  (add-hook 'ediff-after-quit-hook-internal 'winner-undo)
  (csetq ediff-window-setup-function 'ediff-setup-windows-plain)
  (csetq ediff-split-window-function 'split-window-horizontally)
  (csetq ediff-diff-options "-w"))

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
