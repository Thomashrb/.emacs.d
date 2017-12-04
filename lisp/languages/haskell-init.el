;; Haskell mode - IDE like experience for Haskell
;; Prerecs for haskell mode setup
(use-package company-ghc
  :ensure t)

(use-package ghc
  :ensure t)

(use-package haskell-mode
  :ensure t)

;; to allow haskell-mode to look for ghc in the current sandbox.
(setq haskell-process-wrapper-function
        (lambda (args) (apply 'nix-shell-command (nix-current-sandbox) args)))

;; https://github.com/serras/emacs-haskell-tutorial/blob/master/tutorial.md

; Choose indentation mode
;; Use haskell-mode indentation
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;; Use hi2
;(require 'hi2)
;(add-hook 'haskell-mode-hook 'turn-on-hi2)
;; Use structured-haskell-mode
;(add-hook 'haskell-mode-hook 'structured-haskell-mode)

; Add F12 key combination for going to imports block
;(eval-after-load 'haskell-mode
;  '(define-key haskell-mode-map [f12] 'haskell-navigate-imports))

;(custom-set-variables
 ; Set up hasktags (part 2)
 ;'(haskell-tags-on-save t)
 ; Set up interactive mode (part 2)
 ;'(haskell-process-auto-import-loaded-modules t)
 ;'(haskell-process-log t)
 ;'(haskell-process-suggest-remove-import-lines t)
 ; Set interpreter to be "cabal repl"
 ;'(haskell-process-type 'cabal-repl)
 ;)

; Add key combinations for interactive haskell-mode
(eval-after-load 'haskell-mode '(progn
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)))
(eval-after-load 'haskell-cabal '(progn
  (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))

(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map (kbd "C-c C-o") 'haskell-compile))
  
; GHC-MOD
; -------
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

; COMPANY-GHC
; -----------
(add-to-list 'company-backends 'company-ghc)
(custom-set-variables '(company-ghc-show-info t))
