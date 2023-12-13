;;; theme.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package moe-theme
  :ensure t
  :init
  (load-theme 'moe-light)
  (setq moe-theme-modeline-color 'cyan)
  (show-paren-mode t)
  (setq show-paren-style 'expression))

;;; theme.el ends here
