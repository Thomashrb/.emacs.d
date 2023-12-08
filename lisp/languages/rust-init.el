;;; rust-init.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;; commentary
;;; Code:

(use-package flycheck-rust)

(use-package rust-mode
  :after flycheck-rust
  :hook (rust-mode . flycheck-rust-setup))

;;; rust-init.el ends here
