;; Nixos spesific
(use-package company-nixos-options
  :config
  (add-to-list 'company-backends 'company-nixos-options))

(use-package nixos-options)

(use-package helm-nixos-options)
