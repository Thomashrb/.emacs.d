;;; lsp-init --- General lsp setup
;;; Commentary:
;;; Everything non language specific tied to lsp
;;; Code:

;; cannot pull this directly from github because of unresolved dependencies
;; https://github.com/emacs-lsp/lsp-mode/issues/2179
;; so we use melpa for this
(use-package lsp-mode
  :straight (lsp-mode :source melpa)
  :after (company)
  :hook
  (lsp-mode . lsp-lens-mode)
  (scala-mode . lsp-deferred)
  (elixir-mode . lsp-deferred)
  (rust-mode . lsp-deferred)
  (julia-mode . lsp-deferred)
  (haskell-mode . lsp-deferred)
  (c-mode . lsp-deferred)
  (zig-mode . lsp-deferred)
  :config
  (setq lsp-prefer-flymake nil)
  ;; https://emacs-lsp.github.io/lsp-mode/page/performance/
  (setq gc-cons-threshold 100000000)           ;; 100mb
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-idle-delay 0.500)
  (setq lsp-log-io nil)                        ;; logging off for performance
  (setq lsp-completion-provider :capf)         ;; company-capf
  ; LSP will watch all files in the project
  ; directory by default, so we eliminate some
  ; of the irrelevant ones here, most notable
  ; the .direnv folder which will contain *a lot*
  ; of Nix-y noise we don't want indexed.
  (setq lsp-file-watch-ignored '(
    "[/\\\\]\\.direnv$"
    ; SCM tools
    "[/\\\\]\\.git$"
    "[/\\\\]\\.hg$"
    "[/\\\\]\\.bzr$"
    "[/\\\\]_darcs$"
    "[/\\\\]\\.svn$"
    "[/\\\\]_FOSSIL_$"
    ; IDE tools
    "[/\\\\]\\.idea$"
    "[/\\\\]\\.ensime_cache$"
    "[/\\\\]\\.eunit$"
    "[/\\\\]node_modules$"
    "[/\\\\]\\.fslckout$"
    "[/\\\\]\\.tox$"
    "[/\\\\]\\.stack-work$"
    "[/\\\\]\\.bloop$"
    "[/\\\\]\\.metals$"
    "[/\\\\]target$"
    ; Autotools output
    "[/\\\\]\\.deps$"
    "[/\\\\]build-aux$"
    "[/\\\\]autom4te.cache$"
    "[/\\\\]\\.reference$"))
  :bind
  (:map lsp-mode-map
        ("C-c C-r" . lsp-rename)
        ("C-c C-f" . lsp-format-buffer)
        ("C-c C-o" . lsp-organize-imports)))

(use-package lsp-ui
  :after (lsp-mode))

(use-package dap-mode
  :hook
  (lsp-mode . dap-mode)
  (lsp-mode . dap-ui-mode))

;; Enable tree-view for lsp
(use-package all-the-icons)
(use-package treemacs)
(use-package treemacs-projectile)
(use-package lsp-treemacs
  :config
  (lsp-treemacs-sync-mode 1)
  (global-set-key (kbd "C-x e") 'lsp-treemacs-errors-list))
;;; lsp-init.el ends here
