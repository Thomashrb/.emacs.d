;;; cc-init.el --- .. -*- lexical-binding: t -*-
;; Package-Requires: (ccls)
;;; Commentary:
;;; Code:

(defun make-run ()
  "Execute zig build run."
  (interactive)
  (compile "make run"))

(defun make-compile ()
  "Execute zig build run."
  (interactive)
  (compile "make test"))

(defun make-test ()
  "Execute zig build run."
  (interactive)
  (compile "make test"))

(use-package cmake-mode)

(use-package ccls
  :bind
  (:map c-mode-map
        ("C-c C-k" . make-run)
        ("C-c C-C" . make-compile)
        ("C-c C-t" . make-test)))



;;; cc-init.el ends here
