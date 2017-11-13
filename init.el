;; Load configurations and packages

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/lisp/myinit.el")
(load "~/.emacs.d/lisp/general.el")
(load "~/.emacs.d/lisp/appearance.el")
(load "~/.emacs.d/lisp/ivy-init.el")
(load "~/.emacs.d/lisp/ivymodes/swiper-init.el")
(load "~/.emacs.d/lisp/ivymodes/councel-init.el")
(load "~/.emacs.d/lisp/magit-init.el")
(load "~/.emacs.d/lisp/mc-init.el")

;; Load packages that arent configured


;; Junk from emacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (multiple-cursors magit counsel nyan-mode swiper ivy doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
