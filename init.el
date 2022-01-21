;; =============================================================== ;;
;;                Load configurations and packages                 ;;
;; =============================================================== ;;

;; Don't litter my init file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Bootstrap packages
(load "~/.emacs.d/lisp/bootstrap/packages.el")
(load "~/.emacs.d/lisp/bootstrap/settings.el")
(load "~/.emacs.d/lisp/bootstrap/cleanup.el")
;; Startup reduce
(load "~/.emacs.d/lisp/performance/startup.el")
;; General emacs configs
(load "~/.emacs.d/lisp/appearance/theme.el")
(load "~/.emacs.d/lisp/appearance/general.el")
(load "~/.emacs.d/lisp/org.el")
(load "~/.emacs.d/lisp/hydra.el")
(load "~/.emacs.d/lisp/helm.el")
;;(load "~/.emacs.d/lisp/ivy.el")
(load "~/.emacs.d/lisp/git.el")
(load "~/.emacs.d/lisp/misc.el")
(load "~/.emacs.d/lisp/tramp.el")
;; Language support
(load "~/.emacs.d/lisp/languages/lsp/lsp-init.el")
(load "~/.emacs.d/lisp/languages/lsp/scala-init.el")
(load "~/.emacs.d/lisp/languages/lsp/elixir-init.el")
(load "~/.emacs.d/lisp/languages/lsp/haskell-init.el")
(load "~/.emacs.d/lisp/languages/lsp/rust-init.el")
(load "~/.emacs.d/lisp/languages/markdown-init.el")
(load "~/.emacs.d/lisp/languages/python-init.el")
(load "~/.emacs.d/lisp/languages/config-init.el")
(load "~/.emacs.d/lisp/languages/php-init.el")
(load "~/.emacs.d/lisp/languages/pony-init.el")
(load "~/.emacs.d/lisp/languages/lua-init.el")
;(load "~/.emacs.d/lisp/languages/nix-init.el")
;(load "~/.emacs.d/lisp/languages/cl-init.el")
;(load "~/.emacs.d/lisp/languages/go-init.el")
;(load "~/.emacs.d/lisp/languages/bpftrace-init.el")
;(load "~/.emacs.d/lisp/languages/guix-init.el")
;(load "~/.emacs.d/lisp/languages/elm-init.el")
;(load "~/.emacs.d/lisp/languages/erlang-init.el")
(load "~/.emacs.d/lisp/languages/clojure-init.el")
(load "~/.emacs.d/lisp/languages/unison-init.el")
;; Social
(load "~/.emacs.d/lisp/social/irc.el")
(load "~/.emacs.d/lisp/social/email.el")
;; Runtime performance
(load "~/.emacs.d/lisp/performance/runtime.el")
