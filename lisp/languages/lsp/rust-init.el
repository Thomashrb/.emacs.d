(use-package rustic
  :bind (:map rustic-mode-map
              ("C-c C-k" . rustic-cargo-run)
              ("C-c C-t" . rustic-cargo-test)))
