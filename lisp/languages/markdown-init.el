;;; markdown-init.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :bind (:map markdown-mode-map
         ("C-c C-e" . markdown-do)))

;;; markdown-init.el ends here
