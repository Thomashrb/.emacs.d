;; Ensime - IDE features for scala
(use-package ensime
  :ensure t
  :defer t
  :pin melpa-stable
  :config
  (setq ensime-startup-notification nil))

(use-package sbt-mode
  :ensure t
  :defer t
  :pin melpa-stable)

(use-package scala-mode
  :ensure t
  :defer t
  :pin melpa-stable)
