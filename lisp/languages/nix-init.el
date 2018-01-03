;; Collection of usefullness when interacting with nix
(use-package nix-mode
  :ensure t
  :defer t
  :init
  (global-set-key (kbd "C-c C-S-n") 'helm-nixos-options))

(use-package nixos-options
  :ensure t
  :defer t)

(use-package helm-nixos-options
  :ensure t)

(use-package company-nixos-options
  :ensure t)

(add-to-list 'company-backends 'company-nixos-options)
