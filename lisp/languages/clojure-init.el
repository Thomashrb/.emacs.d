(use-package clj-refactor
  :defer t)

(use-package cider
  :defer t
  :bind
  (:map cider-mode-map
        ("C-c C-f" . cider-format-buffer)))

(use-package clojure-mode
  :defer t
  :after
  (clj-refactor)
  (cider)
  :hook
  (clojure-mode . cider-mode)
  (clojure-mode . yas-minor-mode)
  (clojure-mode . clj-refactor-mode))
