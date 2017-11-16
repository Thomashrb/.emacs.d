;; =============================================================== ;;
;;                Load configurations and packages                 ;;
;; =============================================================== ;;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; General emacs configs
(load "~/.emacs.d/lisp/myinit.el")
(load "~/.emacs.d/lisp/general.el")
(load "~/.emacs.d/lisp/appearance.el")
(load "~/.emacs.d/lisp/theme.el")
(load "~/.emacs.d/lisp/modeline.el")
(load "~/.emacs.d/lisp/nav.el")
(load "~/.emacs.d/lisp/ivy-init.el")
(load "~/.emacs.d/lisp/ivymodes/swiper-init.el")
(load "~/.emacs.d/lisp/ivymodes/councel-init.el")
(load "~/.emacs.d/lisp/magit-init.el")
(load "~/.emacs.d/lisp/mc-init.el")
(load "~/.emacs.d/lisp/rainbow-init.el")
;; Language support
(load "~/.emacs.d/lisp/languages/scala-init.el")
(load "~/.emacs.d/lisp/languages/haskell-init.el")
(load "~/.emacs.d/lisp/languages/markdown-init.el")

;; No config needed
(use-package nix-mode
  :ensure t)
