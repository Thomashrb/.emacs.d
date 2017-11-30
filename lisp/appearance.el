;; Basic
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-font "Inconsolata 13" nil t)
(setq default-frame-alist '((font . "Inconsolata 13"))) ;;; set default font for emacs --daemon / emacsclient
