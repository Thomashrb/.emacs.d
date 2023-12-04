;;; rust-init.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;; commentary
;;; Code:

(use-package flycheck-rust)

(use-package rust-mode
  :after flycheck-rust
  :hook (rust-mode . flycheck-rust-setup))

(dap-register-debug-template "Rust::GDB Run Configuration"
                             (list :type "gdb"
                                   :request "launch"
                                   :name "GDB::Run"
                           :gdbpath "rust-gdb"
                                   :target nil
                                   :cwd nil))

;;; rust-init.el ends here
