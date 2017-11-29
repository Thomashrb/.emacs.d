;; Nyan statusbar
;; (use-package nyan-mode
;;   :ensure t)
;; (nyan-mode 1)

;; Spaceline
(use-package spaceline :ensure t
  :config
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main)))))

;; Needed for spaceline to work
(use-package spaceline-config :ensure spaceline
  :config
  (spaceline-emacs-theme))
