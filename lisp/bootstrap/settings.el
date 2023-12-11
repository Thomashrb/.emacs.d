;;; settings.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode)
  (setq display-line-numbers-type 'relative))

;; Enable flyspell for prog mode and text mode
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; Whitespace cleanup
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Use spaces instead of tabs
(setq-default c-basic-indent 2)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; Prompt before killing emacs
(setq confirm-kill-emacs 'y-or-n-p)

;;; settings.el ends here
