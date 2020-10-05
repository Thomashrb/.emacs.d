(use-package undo-tree)
(use-package smartparens)
(use-package flymake-easy)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)))

(use-package restclient)
(use-package ob-restclient) ; org-babel restclient

(use-package nyan-mode
  :init (nyan-mode t))

;; Rainbowdelimiters - Visualy pair up delimiters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package yasnippet
  :init (yas-global-mode 1))

(use-package company
  :hook (prog-mode . company-mode))

(use-package avy
  :config
  (global-set-key (kbd "C-c f") 'avy-goto-char)
  (global-set-key (kbd "C-c F") 'avy-goto-char-2)
  (global-set-key (kbd "M-g g") 'avy-goto-line))

(use-package multiple-cursors
  :config
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(use-package comment-tags
  :hook (prog-mode . comment-tags-mode))
