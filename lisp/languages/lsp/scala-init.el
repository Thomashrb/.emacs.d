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

(use-package lsp-metals
  :straight (lsp-metals :type git :host github :repo "emacs-lsp/lsp-metals")
  :custom
  ;; Metals claims to support range formatting by default but it supports range
  ;; formatting of multiline strings only. Disable it
  (lsp-metals-server-args '("-J-Dmetals.allow-multiline-string-formatting=off"))
  :hook (scala-mode . lsp))
;;; scala-init.el ends here
