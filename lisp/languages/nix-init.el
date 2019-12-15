;; Collection of usefullness when interacting with nix
(use-package nix-mode
  :defer t
  :init
  (global-set-key (kbd "C-c C-S-n") 'helm-nixos-options))

(use-package nix-sandbox
  :init
  ;; using ghc repl in sandbox.
  (setq haskell-process-wrapper-function
	  (lambda (args) (apply 'nix-shell-command (nix-current-sandbox) args))))
