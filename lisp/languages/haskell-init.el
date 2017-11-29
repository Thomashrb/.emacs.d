;; Prerecs for haskell mode setup
(use-package hindent
  :ensure t)

(use-package company-ghc
  :ensure t)

(use-package shm
  :ensure t)

(use-package ghc
  :ensure t)

;; Haskell mode - IDE like experience for Haskell
(use-package haskell-mode
  :ensure t
  :config
  (add-to-list 'company-backends 'company-ghc)
  (custom-set-variables '(company-ghc-show-info t)))

;; haskell-mode has its own hooks
;;(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(add-hook 'haskell-mode-hook 'structured-haskell-mode) ;; use this SHM instead
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook 'haskell-doc-mode)
;; Ghc-mod
;(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
;(autoload 'ghc-init "ghc" nil t);
;(autoload 'ghc-debug "ghc" nil t)
