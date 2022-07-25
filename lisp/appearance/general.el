;; Basic
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Highlight trailing whitespace
(setq-default show-trailing-whitespace t)

;; Highlight tabs
(setq-default highlight-tabs t)

;; Show parens
(show-paren-mode t)
(setq show-paren-style 'expression)

;; Font
(set-frame-font "-PfEd-Terminus (TTF)-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1" nil t)
(setq default-frame-alist '((font . "-PfEd-Terminus (TTF)-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1"))) ;;; set default font for emacs --daemon / emacsclient
