(use-package zig-mode
  :bind
  (:map zig-mode-map
        ("C-c C-k" . zig-run)
        ("C-c C-C" . zig-compile)
        ("C-c C-t" . zig-test-buffer)))
