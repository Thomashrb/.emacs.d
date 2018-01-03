;; from: http://julienblanchard.com/2016/fancy-rust-development-with-emacs/
(use-package rust-mode
  :defer t
  :init
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  (add-hook 'rust-mode-hook
	    (lambda ()
	      (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))
;;  (add-hook 'rust-mode-hook #'racer-mode)
;;  (add-hook 'racer-mode-hook #'eldoc-mode)
;;  (add-hook 'racer-mode-hook #'company-mode)
;;  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
  )

(use-package cargo
  :ensure t)

(use-package flycheck-rust
  :ensure t)

;;TODO set up racer
;; (use-package racer
;;   :ensure t
;;   :defer t
;;   :init
;;   (setq racer-cmd "/nix/store/xgzhmzialg4aj2c70lmlk7dcf29p99b0-rustup-1.3.0") ;; Rustup binaries PATH
;;   ;;(setq racer-rust-src-path "/home/bbsl/Code/rust/") ;; Rust source code PATH
;;   )

