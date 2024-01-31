;;; theme.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(load-theme 'modus-vivendi)
(show-paren-mode t)
(setq show-paren-style 'expression)

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

;;; theme.el ends here
