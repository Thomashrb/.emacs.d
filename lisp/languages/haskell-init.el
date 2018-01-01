;; Dante should pull these packages in
;; Note: For this to work as intended with nix-shell
;; needs a shell.nix file
;; test that this works by invoking nix-shell with no options      
;; ---------------------
(use-package haskell-mode
  :ensure t
  :pin melpa-stable
  :defer t)

(use-package ghc
  :ensure t)
;;----------------------

(use-package dante
  :ensure t
  :pin melpa-stable
  :after haskell-mode
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'dante-mode)
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  (add-to-list 'company-backends 'company-ghc))

(use-package nix-sandbox
  :ensure t)

;; to use hlint
(add-hook 'dante-mode-hook
   '(lambda () (flycheck-add-next-checker 'haskell-dante
                '(warning . haskell-hlint))))

;; using flycheck in sandbox
(setq flycheck-command-wrapper-function
        (lambda (command) (apply 'nix-shell-command (nix-current-sandbox) command))
      flycheck-executable-find
        (lambda (cmd) (nix-executable-find (nix-current-sandbox) cmd)))

;; using ghc repl in sandbox.
(setq haskell-process-wrapper-function
        (lambda (args) (apply 'nix-shell-command (nix-current-sandbox) args)))
