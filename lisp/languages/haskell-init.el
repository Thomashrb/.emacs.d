;; Haskell mode - IDE like experience for Haskell
(use-package haskell-mode
  :ensure t)
;; haskell-mode has its own hooks
(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook 'haskell-doc-mode)
;; Ghc-mod
;(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
;(autoload 'ghc-init "ghc" nil t);
;(autoload 'ghc-debug "ghc" nil t)
