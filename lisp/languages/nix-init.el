;; Collection of usefullness when interacting with nix
(use-package nix-mode ;;
  :ensure t)

(use-package company-nixos-options
  :ensure t
  :config
  (add-to-list 'company-backends 'company-nixos-options))