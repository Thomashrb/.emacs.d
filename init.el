;; =============================================================== ;;
;;                Load configurations and packages                 ;;
;; =============================================================== ;;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Don't litter my init file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; General emacs configs
(load "~/.emacs.d/lisp/myinit.el")
(load "~/.emacs.d/lisp/cleanup.el")
(load "~/.emacs.d/lisp/appearance.el")
(load "~/.emacs.d/lisp/theme.el")
(load "~/.emacs.d/lisp/modeline.el")
(load "~/.emacs.d/lisp/nav.el")
(load "~/.emacs.d/lisp/helm.el")
(load "~/.emacs.d/lisp/dumb-jump.el")
(load "~/.emacs.d/lisp/git-init.el")
(load "~/.emacs.d/lisp/rainbow-init.el")
(load "~/.emacs.d/lisp/mc.el")
;(load "~/.emacs.d/lisp/nixos-init.el") ;; Disable when not on nixos
;(load "~/.emacs.d/lisp/languages/nix-init.el")
;; Language support
(load "~/.emacs.d/lisp/languages/lsp-init.el")
(load "~/.emacs.d/lisp/languages/scala-init.el")
(load "~/.emacs.d/lisp/languages/haskell-init.el")
(load "~/.emacs.d/lisp/languages/markdown-init.el")
(load "~/.emacs.d/lisp/languages/python-init.el")
(load "~/.emacs.d/lisp/languages/rust-init.el")
(load "~/.emacs.d/lisp/languages/elm-init.el")
;; Social
(load "~/.emacs.d/lisp/irc.el")
;(load "~/.emacs.d/lisp/gmail.el")

;; No config needed
(use-package flycheck
  :init (global-flycheck-mode))
(use-package yasnippet
  :init (yas-global-mode 1))
(use-package highlight-symbol)
(use-package company
  :hook (prog-mode . company-mode))
(use-package restclient)
(use-package undo-tree)
(use-package jump-char
  :init
  (global-set-key (kbd "C-c f") 'jump-char-forward))
