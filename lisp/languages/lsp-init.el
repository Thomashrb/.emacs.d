;;; lsp-init --- General lsp setup
;;; Commentary:
;;; Everything non language specific tied to lsp
;;; Code:
(use-package lsp-ui
  :commands lsp-ui-mode)
(use-package helm-lsp
  :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language
(use-package company-lsp)

;;; lsp-init.el ends here
