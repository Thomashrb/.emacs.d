;;; general-init --- Summary
;; A set of common packages
;;; Commentary:
;; After bootstrapping use-package
;; all other general mode setup should go here
;;; Code:
(use-package undo-tree
  :init
  (global-undo-tree-mode))

(use-package smartparens
  :hook
  (prog-mode . smartparens-mode))

;; get syntax check popups
(use-package flycheck
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package restclient)

;; Rainbowdelimiters - Visualy pair up delimiters
(use-package rainbow-delimiters
  :hook
  (prog-mode . rainbow-delimiters-mode))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package company
  :hook (prog-mode . company-mode))

(use-package avy
  :config
  (global-set-key (kbd "C-c f") 'avy-goto-char)
  (global-set-key (kbd "C-c F") 'avy-goto-char-2)
  (setq avy-background t))

(use-package multiple-cursors
  :config
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(use-package comment-tags
  :hook (prog-mode . comment-tags-mode))

(global-set-key (kbd "C-x B") 'ibuffer)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)

;;; general-init.el ends here
