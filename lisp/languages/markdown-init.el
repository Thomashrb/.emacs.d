;;; markdown-init.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package markdown-mode
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :bind (:map markdown-mode-map
         ("C-c C-e" . markdown-do)
         ;; markdown-mode binds M-n/M-p locally, overriding the global
         ("M-n" . forward-paragraph)
         ("M-p" . backward-paragraph))
  :config
  ;; GFM has its own keymap, so restore the bindings there as well.
  (define-key gfm-mode-map (kbd "M-n") #'forward-paragraph)
  (define-key gfm-mode-map (kbd "M-p") #'backward-paragraph))

;;; markdown-init.el ends here
