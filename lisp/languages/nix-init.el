;; Collection of usefullness when interacting with nix
(use-package nix-mode
  :ensure t
  :defer t
  :init
  (global-set-key (kbd "C-c C-S-n") 'helm-nixos-options))

(use-package company-nixos-options
  :ensure t
  :config
  (add-to-list 'company-backends 'company-nixos-options))

(use-package nixos-options
  :ensure t
  :defer t)

(use-package helm-nixos-options
  :ensure t
  :defer t)

;;
(use-package nix-sandbox
  :ensure t
  :init
  ;; using flycheck in sandbox
  (setq flycheck-command-wrapper-function
          (lambda (command) (apply 'nix-shell-command (nix-current-sandbox) command))
        flycheck-executable-find
          (lambda (cmd) (nix-executable-find (nix-current-sandbox) cmd)))
  ;; using ghc repl in sandbox.
  (setq haskell-process-wrapper-function
          (lambda (args) (apply 'nix-shell-command (nix-current-sandbox) args))))
