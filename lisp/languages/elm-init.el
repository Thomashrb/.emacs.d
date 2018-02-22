;; http://www.lambdacat.com/post-modern-emacs-setup-for-el/
(use-package elm-mode
  :ensure t)

(use-package flycheck-elm
  :ensure t)

;; npm install -g elm-oracle
;(use-package elm-oracle
;  :ensure t)

;; Should be imported from elsewhere
(use-package flycheck
  :ensure t)

(use-package company
  :ensure t)
