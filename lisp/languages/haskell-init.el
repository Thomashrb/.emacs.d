;; Dante should pull these packages in
;; Note: For this to work as intended with nix-shell
;; needs a shell.nix file
;; test that this works by invoking nix-shell with no options
;; ---------------------
(use-package haskell-mode
  :defer t)

(use-package ghc
  :defer t)
;;----------------------

(use-package dante
  :defer t
  :after haskell-mode
  :commands 'dante-mode
  :config
  (add-hook 'haskell-mode-hook 'dante-mode))
