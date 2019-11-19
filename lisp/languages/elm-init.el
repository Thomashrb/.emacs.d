;;; elm-init --- Elm lang setup
;;; Commentary:
;;; Everything elm lang specific
;;; http://www.lambdacat.com/post-modern-emacs-setup-for-el/
;;; Code:
(use-package elm-mode
  :config
  (add-hook 'elm-mode-hook 'flycheck-mode))

(use-package flycheck-elm
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-elm-setup))

;; npm install -g elm-oracle
;(use-package elm-oracle
;  :ensure t)

;;; elm-init.el ends here
