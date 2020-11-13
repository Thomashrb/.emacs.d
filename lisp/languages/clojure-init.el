(use-package clj-refactor
  :defer t)

;; https://github.com/borkdude/clj-kondo/blob/master/doc/install.md
(use-package flycheck-clj-kondo)

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
  (flycheck-clj-kondo)
  :hook
  (clojure-mode . cider-mode)
  (clojure-mode . yas-minor-mode)
  (clojure-mode . clj-refactor-mode))
