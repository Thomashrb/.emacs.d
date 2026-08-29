;;; markdown-init.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package markdown-ts-mode
  :ensure nil
  :mode ("\\.md\\'" "\\.mdx\\'" "\\.markdown\\'")
  :config
  (require 'markdown-ts-mode-x))

;;; markdown-init.el ends here
