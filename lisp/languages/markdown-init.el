;;; markdown-init.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package markdown-mode
  :defer t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
     ("\\.md\\'" . markdown-mode)
     ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;;; markdown-init.el ends here
