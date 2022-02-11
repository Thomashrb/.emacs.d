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

;; emacs shipped project package is outdated
;; and magit breaks if this is not loaded before magit
;; and rustic is loaded https://github.com/magit/magit/pull/4445#issuecomment-881339463
(use-package project
  :init
  (setq project-switch-commands t))

;; Git porcelain
(use-package magit
  :after project
  :defer t
  :init
  (setq magit-auto-revert-mode nil)
  (global-set-key (kbd "C-c v /") 'magit-dispatch)
  (global-set-key (kbd "C-c v .") 'magit-file-dispatch)
  (global-set-key (kbd "C-c v b") 'magit-branch-checkout)
  (global-set-key (kbd "C-c v g") 'magit-status)
  (global-set-key (kbd "C-c v G") 'magit-status-here)
  (global-set-key (kbd "C-c v D") 'magit-file-delete)
  (global-set-key (kbd "C-c v B") 'magit-blame-addition)
  (global-set-key (kbd "C-c v C") 'magit-clone)
  (global-set-key (kbd "C-c v F") 'magit-fetch)
  (global-set-key (kbd "C-c v L") 'magit-log-buffer-file)
  (global-set-key (kbd "C-c v S") 'magit-stage-file)
  (global-set-key (kbd "C-c v U") 'magit-unstage-file)
  (global-set-key (kbd "C-c v l") 'magit-log)
  (global-git-gutter-mode t))

(use-package keychain-environment
  :init
  (keychain-refresh-environment))
