;; Metals - lsp for scala
;;; install metals
;;; https://scalameta.org/metals/docs/editors/emacs.html
;; Enable scala-mode and sbt-mode
(use-package scala-mode
  :ensure t
  :mode "\\.s\\(cala\\|bt\\)$")

(use-package sbt-mode
  :ensure t
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

(use-package lsp-mode
  :ensure t
  :hook (scala-mode . lsp)
  :config (setq lsp-prefer-flymake nil))

(use-package company-lsp
  :ensure t
  :after lsp-mode
  :config
  (push 'company-lsp company-backends))
