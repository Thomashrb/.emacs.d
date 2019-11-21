;;; lsp-init --- General lsp setup
;;; Commentary:
;;; Everything non language specific tied to lsp
;;; Code:
(use-package lsp-ui)
(use-package helm-lsp)
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language
(use-package company-lsp)

;; Enable tree-view for lsp
(use-package all-the-icons)
(use-package treemacs)
(use-package treemacs-projectile)
(use-package lsp-treemacs)
;;; lsp-init.el ends here
