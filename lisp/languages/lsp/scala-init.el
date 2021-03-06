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

(use-package sbt-mode
  :commands sbt-start sbt-command
  :config
  ;; WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
  ;; allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map)
   ;; sbt-supershell kills sbt-mode:  https://github.com/hvesalai/emacs-sbt-mode/issues/152
   (setq sbt:program-options '("-Dsbt.supershell=false")))

;;; scala-init.el ends here
