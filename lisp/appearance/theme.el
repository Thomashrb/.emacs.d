;;; theme.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package moe-theme
  :config
  (load-theme 'moe-dark t)
  (setq moe-theme-highlight-buffer-id t)
  (setq moe-theme-resize-title-markdown '(1.5 1.4 1.3 1.2 1.0 1.0))
  (setq moe-theme-resize-title-org '(1.5 1.4 1.3 1.2 1.1 1.0 1.0 1.0 1.0))
  (setq moe-theme-resize-title-rst '(1.5 1.4 1.3 1.2 1.1 1.0))
  (setq moe-theme-modeline-color 'cyan))

;;; theme.el ends here
