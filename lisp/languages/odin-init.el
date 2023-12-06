;;; odin-init.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;; commentary
;;; Code:

(use-package odin-mode
  :straight (odin-mode :type git :host sourcehut :repo "mgmarlow/odin-mode")
  :bind (:map odin-mode-map
        ("C-c C-k" . 'odin-run-project)
        ("C-c C-c" . 'odin-build-project)
        ("C-c C-t" . 'odin-test-project)))

;;; odin-init.el ends here
