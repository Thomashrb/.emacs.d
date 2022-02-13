(defun zig-build-run ()
  "Execute zig build run."
  (interactive)
  (zig--run-cmd "build run" nil))

(use-package zig-mode
  :config
  (setq zig-format-on-save nil)
  (setq zig-ansi-color-for-format-errors t)
  :bind
  (:map zig-mode-map
        ("M-C-x" . zig-build-run)
        ("C-c C-k" . zig-run)
        ("C-c C-C" . zig-compile)
        ("C-c C-t" . zig-test-buffer)))
