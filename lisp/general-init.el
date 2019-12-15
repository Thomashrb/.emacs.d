(use-package highlight-symbol)
(use-package restclient)
(use-package ob-restclient) ; org-babel restclient
(use-package undo-tree)
(use-package smartparens)

(use-package nyan-mode
  :init (nyan-mode t))

;; Rainbowdelimiters - Visualy pair up delimiters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package yasnippet
  :init (yas-global-mode 1))

(use-package company
  :hook (prog-mode . company-mode))

(use-package jump-char
  :init
  (global-set-key (kbd "C-c f") 'jump-char-forward))

;; Jump to definition stupidly
(use-package dumb-jump
  :bind (("M-g o" . dumb-jump-go-other-window)
         ("M-g j" . dumb-jump-go)
         ("M-g i" . dumb-jump-go-prompt)
         ("M-g x" . dumb-jump-go-prefer-external)
         ("M-g z" . dumb-jump-go-prefer-external-other-window))
  :config (setq dumb-jump-selector 'helm))

(use-package multiple-cursors
  :config
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(use-package comment-tags
  :hook (prog-mode . comment-tags-mode))
