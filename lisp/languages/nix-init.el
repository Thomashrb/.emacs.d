;; Collection of usefullness when interacting with nix
(use-package nix-mode ;;
  :ensure t)

(add-to-list 'company-backends 'company-nixos-options)
