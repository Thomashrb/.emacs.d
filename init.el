;; =============================================================== ;;
;;                Load configurations and packages                 ;;
;; =============================================================== ;;

;; Don't litter my init file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; General emacs configs
(load "~/.emacs.d/lisp/myinit.el")
(load "~/.emacs.d/lisp/theme.el")
(load "~/.emacs.d/lisp/cleanup.el")
(load "~/.emacs.d/lisp/appearance.el")
(load "~/.emacs.d/lisp/hydra.el")
(load "~/.emacs.d/lisp/helm.el")
;;(load "~/.emacs.d/lisp/ivy.el")
(load "~/.emacs.d/lisp/git-init.el")
(load "~/.emacs.d/lisp/general-init.el")
(load "~/.emacs.d/lisp/tramp-init.el")
(load "~/.emacs.d/lisp/org.el")
;; Language support
(load "~/.emacs.d/lisp/languages/lsp/lsp-init.el")
(load "~/.emacs.d/lisp/languages/lsp/scala-init.el")
(load "~/.emacs.d/lisp/languages/lsp/elixir-init.el")
(load "~/.emacs.d/lisp/languages/markdown-init.el")
(load "~/.emacs.d/lisp/languages/python-init.el")
(load "~/.emacs.d/lisp/languages/config-init.el")
(load "~/.emacs.d/lisp/languages/php-init.el")
;(load "~/.emacs.d/lisp/languages/nix-init.el")
;(load "~/.emacs.d/lisp/languages/lsp/rust-init.el")
;(load "~/.emacs.d/lisp/languages/lua-init.el")
;(load "~/.emacs.d/lisp/languages/cl-init.el")
;(load "~/.emacs.d/lisp/languages/go-init.el")
;(load "~/.emacs.d/lisp/languages/bpftrace-init.el")
;(load "~/.emacs.d/lisp/languages/guix-init.el")
;(load "~/.emacs.d/lisp/languages/haskell-init.el")
;(load "~/.emacs.d/lisp/languages/elm-init.el")
;(load "~/.emacs.d/lisp/languages/erlang-init.el")
;(load "~/.emacs.d/lisp/languages/pony-init.el")
;(load "~/.emacs.d/lisp/languages/clojure-init.el")
;; Social
(load "~/.emacs.d/lisp/irc.el")
(load "~/.emacs.d/lisp/email.el")
