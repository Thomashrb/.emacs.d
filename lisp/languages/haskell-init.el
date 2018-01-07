;; Dante should pull these packages in
;; Note: For this to work as intended with nix-shell
;; needs a shell.nix file
;; test that this works by invoking nix-shell with no options
;; ---------------------
(use-package haskell-mode
  :ensure t)

(use-package ghc
  :ensure t)
;;----------------------

;(use-package company-ghc
;  :ensure t)

(use-package dante
  :ensure t
  :after haskell-mode
  :commands 'dante-mode
  :config
;;  (add-to-list 'company-backends 'company-ghc)
  (add-hook 'haskell-mode-hook 'dante-mode)
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  ;; to use hlint
  (add-hook 'dante-mode-hook
	    '(lambda () (flycheck-add-next-checker 'haskell-dante
						   '(warning . haskell-hlint)))))
