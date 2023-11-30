(use-package zig-mode
  :config
  (setq zig-format-on-save nil)
  (setq zig-ansi-color-for-format-errors t)
  :bind
  (:map zig-mode-map
        ("C-c C-k" . zig-build-run)
        ("C-c C-T" . zig-build-test)
        ("C-c C-t" . zig-test-buffer)))

(defun zig-build-run ()
  "Execute zig build run."
  (interactive)
  (zig--run-cmd "build run" nil))

(defun zig-build-test ()
  "Execute zig build run."
  (interactive)
  (zig--run-cmd "build test" nil))
