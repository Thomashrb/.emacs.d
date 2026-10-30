;;; markdown-init.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package markdown-ts-mode
  :ensure nil
  :mode ("\\.md\\'" "\\.mdx\\'" "\\.markdown\\'")
  :config
  (require 'markdown-ts-mode-x))

;; markdown-mode hijacks M-n/M-p for link navigation, shadowing the global
;; paragraph motion; restore paragraph movement there.
(with-eval-after-load 'markdown-mode
  (define-key markdown-mode-map (kbd "M-n") #'markdown-forward-paragraph)
  (define-key markdown-mode-map (kbd "M-p") #'markdown-backward-paragraph))

;;; markdown-init.el ends here
