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
  :config
  (setq comment-tags-keyword-faces
        `(("TODO" . ,(list :weight 'bold :foreground "#28ABE3"))
          ("FIXME" . ,(list :weight 'bold :foreground "#DB3340"))
          ("BUG" . ,(list :weight 'bold :foreground "#DB3340"))
          ("HACK" . ,(list :weight 'bold :foreground "#E8B71A"))
          ("KLUDGE" . ,(list :weight 'bold :foreground "#E8B71A"))
          ("XXX" . ,(list :weight 'bold :foreground "#F7EAC8"))
          ("INFO" . ,(list :weight 'bold :foreground "#F7EAC8"))
          ("DONE" . ,(list :weight 'bold :foreground "#1FDA9A"))))
  (setq comment-tags-comment-start-only t
        comment-tags-require-colon nil
        comment-tags-case-sensitive t
        comment-tags-show-faces nil)
  :hook
  (prog-mode . comment-tags-mode))

;; INFO this requires direnv binary locally
(use-package direnv
  :init
  (add-hook 'prog-mode-hook #'direnv-update-environment)
  :config
  (direnv-mode)
  (add-to-list 'warning-suppress-types '(direnv)))

(setq savehist-length 25)
(savehist-mode 1)

(global-set-key (kbd "C-x B") 'ibuffer)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
(add-hook 'emacs-lisp-mode-hook
    (lambda ()
        (define-key emacs-lisp-mode-map (kbd "C-c C-k") 'eval-buffer)))

;;; general-init.el ends here
