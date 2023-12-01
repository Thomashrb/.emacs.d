;;; init.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Don't litter my init file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Bootstrap packages
(load "~/.emacs.d/lisp/bootstrap/packages.el")
(load "~/.emacs.d/lisp/bootstrap/settings.el")
(load "~/.emacs.d/lisp/bootstrap/cleanup.el")
;; Startup reduce
(load "~/.emacs.d/lisp/performance/startup.el")
;; Appearance
(load "~/.emacs.d/lisp/appearance/theme.el")
(load "~/.emacs.d/lisp/appearance/general.el")
;; General emacs configs
(load "~/.emacs.d/lisp/org.el")
(load "~/.emacs.d/lisp/vertico.el")
(load "~/.emacs.d/lisp/git.el")
(load "~/.emacs.d/lisp/misc.el")
;; Language support
(load "~/.emacs.d/lisp/languages/eglot-init.el")
(load "~/.emacs.d/lisp/languages/scala-init.el")
(load "~/.emacs.d/lisp/languages/zig-init.el")
(load "~/.emacs.d/lisp/languages/cc-init.el")
(load "~/.emacs.d/lisp/languages/markdown-init.el")
(load "~/.emacs.d/lisp/languages/config-init.el")
;; (load "~/.emacs.d/lisp/languages/lua-init.el")
;; (load "~/.emacs.d/lisp/languages/php-init.el")
;; (load "~/.emacs.d/lisp/languages/pony-init.el")
(load "~/.emacs.d/lisp/languages/go-init.el")
;; Social
(load "~/.emacs.d/lisp/social/irc.el")
;; (load "~/.emacs.d/lisp/social/email.el")
;; Runtime performance
(load "~/.emacs.d/lisp/performance/runtime.el")
;; workaround

;;; init.el ends here
