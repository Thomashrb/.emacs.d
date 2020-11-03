;;; lsp-init --- General lsp setup
;;; Commentary:
;;; Everything non language specific tied to lsp
;;; Code:

;; NOTE: must install the different ls's
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

(use-package posframe
  :after (dap-mode))

(use-package company-lsp
  :config
  (push 'company-capf company-backends))

;; Enable tree-view for lsp
(use-package all-the-icons)
(use-package treemacs)
(use-package treemacs-projectile)
(use-package lsp-treemacs
  :config
  (lsp-treemacs-sync-mode 1)
  (global-set-key (kbd "C-x e") 'lsp-treemacs-errors-list))
;;; lsp-init.el ends here
