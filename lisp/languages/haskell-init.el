;; Dante should pull these packages in
;; Note: For this to work as intended with nix-shell
;; needs a shell.nix file
;; test that this works by invoking nix-shell with no options
;; ---------------------
(use-package haskell-mode)

(use-package ghc)
;;----------------------

(use-package dante
  :after haskell-mode
  :commands 'dante-mode
  :config
  (add-hook 'haskell-mode-hook 'dante-mode))
