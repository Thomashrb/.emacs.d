;; TODO - can I speed launch up by altering this?

;; Collection of usefullness when interacting with nix
(use-package nix-mode ;;
  :ensure t
  :defer t)

(use-package company-nixos-options
  :ensure t
  :defer t)

;(add-to-list 'company-backends 'company-nixos-options)
