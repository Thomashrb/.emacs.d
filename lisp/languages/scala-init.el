;; Ensime - IDE features for scala
(use-package ensime
  :ensure t
  :pin melpa-stable
  :config
  (setq ensime-startup-notification nil))

(use-package sbt-mode
  :pin melpa)

(use-package scala-mode
  :pin melpa)
