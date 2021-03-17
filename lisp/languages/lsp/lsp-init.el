;;; lsp-init --- General lsp setup
;;; Commentary:
;;; Everything non language specific tied to lsp
;;; Code:

;; cannot pull this directly from github because of unresolved dependencies
;; The following line pulls lsp-mode from melpa before requiring straight to handle it
;; https://github.com/emacs-lsp/lsp-mode/issues/2179
(straight-use-package '(lsp-mode :source melpa))

(use-package lsp-mode
  :after (company)
  :hook
  (scala-mode . lsp)
  (elixir-mode . lsp)
  (rust-mode . lsp)
  :bind
  (:map lsp-mode-map
        ("C-c C-f" . lsp-format-buffer)))

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
