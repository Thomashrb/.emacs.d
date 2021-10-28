;;; clojure-init
;;; Commentary:
;;; Handle clojure language setup
;;; Code:
(use-package clj-refactor)

;; https://github.com/borkdude/clj-kondo/blob/master/doc/install.md
(use-package flycheck-clj-kondo)

(use-package cider
  :bind
  (:map cider-mode-map
        ("C-c C-f" . cider-format-buffer)
        ("<C-tab>" . complete-symbol))
  :hook
  (cider-mode . company-mode)
  (cider-repl-mode . company-mode))


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
;;; clojure-init.el ends here
