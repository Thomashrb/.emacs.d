;; LSP
(use-package lsp-mode
  :ensure t
  :commands lsp
  :config (require 'lsp-clients))
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)
(use-package helm-lsp
  :ensure t
  :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)
(use-package dap-mode
  :ensure t)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language
