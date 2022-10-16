;;; Metals --- summary
;; install metals
;;; Commentary:
;; https://scalameta.org/metals/docs/editors/emacs.html
;; Enable scala-mode and sbt-mode
;;; Code:
(use-package javadoc-lookup)

(use-package scala-mode
  :interpreter
  ("scala" . scala-mode)
  :mode "\\.s\\(cala\\|bt\\)$")

(use-package lsp-metals)

;;; scala-init.el ends here
