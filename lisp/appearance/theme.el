;;-----------------------------;;
;; Theme                       ;;
;;-----------------------------;;

(use-package spacemacs-common
  :straight spacemacs-theme
  :init
  (load-theme 'spacemacs-dark t)
  (setq spacemacs-theme-org-agenda-height nil)
  (setq spacemacs-theme-org-height nil))

(use-package nyan-mode
  :init (nyan-mode t))
