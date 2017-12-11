;; from: http://julienblanchard.com/2016/fancy-rust-development-with-emacs/
(use-package rust-mode
  :ensure t
  :defer t)

;(use-package cargo
;  :ensure t
;  :defer t)

;; start flycheck-rust
;(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

;; install package rustfmt for formating
;; (add-hook 'rust-mode-hook
;;           (lambda ()
;;             (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))

;; install package racer for code completion
;; (setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
;; (setq racer-rust-src-path "/home/bbsl/Code/rust/src") ;; Rust source code PATH

;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'eldoc-mode)
;; (add-hook 'racer-mode-hook #'company-mode)

