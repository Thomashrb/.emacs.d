;;; misc.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;; After bootstrapping use-package
;; all other general mode setup should go here
;;; Code:
(use-package undo-tree
  :init
  (global-undo-tree-mode))

;; Prevent undo tree files from polluting your git repo
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package corfu
  :init
  (global-corfu-mode)
  ;; TAB-and-Go customizations
  :custom
  (corfu-auto t)            ;; Enable auto completion
  (corfu-cycle t)           ;; Enable cycling for `corfu-next/previous'
  (corfu-preselect 'prompt) ;; Always preselect the prompt
  ;; Use TAB for cycling, default is `corfu-complete'.
  :bind
  (:map corfu-map
        ("TAB" . corfu-next)
        ([tab] . corfu-next)
        ("S-TAB" . corfu-previous)
        ([backtab] . corfu-previous))
  :hook ((prog-mode . corfu-mode)
         (shell-mode . corfu-mode)
         (eshell-mode . corfu-mode)))

;; Only needed when using emacs in the terminal
(use-package corfu-terminal
  :after corfu
  :straight (corfu-terminal :type git :repo "https://codeberg.org/akib/emacs-corfu-terminal.git")
  :init
  (unless (display-graphic-p) (corfu-terminal-mode +1)))

(use-package avy
  :config
  (global-set-key (kbd "C-c f") 'avy-goto-char)
  (global-set-key (kbd "C-c F") 'avy-goto-char-2)
  (setq avy-background t))

;; Enable rectangle selection mode with C-<enter>
(cua-selection-mode 1)
(global-set-key (kbd "M-SPC") 'cua-set-rectangle-mark)

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

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))

(setq savehist-length 25)
(savehist-mode 1)

(global-set-key (kbd "C-x B") 'ibuffer)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
(add-hook 'emacs-lisp-mode-hook
    (lambda ()
        (define-key emacs-lisp-mode-map (kbd "C-c C-k") 'eval-buffer)))

;;; misc.el ends here
