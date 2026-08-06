;;; web-init.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package web-mode
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(define-derived-mode vue-mode web-mode "Vue")
(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))

;;; web-init.el ends here
