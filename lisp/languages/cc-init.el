;;; cc-init.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun make-run ()
  "Execute zig build run."
  (interactive)
  (compile "make run"))

(defun make-compile ()
  "Execute zig build run."
  (interactive)
  (compile "make"))

(defun make-test ()
  "Execute zig build run."
  (interactive)
  (compile "make test"))

(use-package cmake-mode)

(use-package cc-mode
  :bind
  (:map c-mode-map
        ("C-c C-k" . make-compile)
        ("C-c C-K" . make-run)
        ("C-c C-t" . make-test)))



;;; cc-init.el ends here
