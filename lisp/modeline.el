;; Nyan statusbar
;; (use-package nyan-mode
;;   :ensure t)

;; Spaceline
(use-package spaceline
  :ensure t
  :config
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main)))))

(require 'spaceline-config)
(spaceline-emacs-theme)
