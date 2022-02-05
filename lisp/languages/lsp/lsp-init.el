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
  (scala-mode . lsp)
  (elixir-mode . lsp)
  (rust-mode . lsp)
  (lsp-mode . lsp-lens-mode)
  (julia-mode . lsp)
  :config
  (setq lsp-prefer-flymake nil)
  ;; https://emacs-lsp.github.io/lsp-mode/page/performance/
  (setq gc-cons-threshold 100000000)           ;; 100mb
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-idle-delay 0.500)
  (setq lsp-log-io nil)                        ;; logging off for performance
  (setq lsp-completion-provider :capf)         ;; company-capf
  :bind
  (:map lsp-mode-map
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
