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

;; Enable tree-view for lsp
(use-package treemacs
  :config
  (progn
    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode t)))
(use-package treemacs-projectile
  :after treemacs)
(use-package lsp-treemacs
  :after treemacs
  :config
  (lsp-metals-treeview-enable t)
  (setq lsp-metals-treeview-show-when-views-received t))

;;; lsp-init.el ends here
