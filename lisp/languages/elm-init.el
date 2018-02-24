;; http://www.lambdacat.com/post-modern-emacs-setup-for-el/
(use-package elm-mode
  :ensure t
  :config
  (add-hook 'elm-mode-hook 'flycheck-mode)
  )

(use-package flycheck-elm
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-elm-setup)
  )

;; npm install -g elm-oracle
;(use-package elm-oracle
;  :ensure t)

;; Should be imported from elsewhere
(use-package flycheck
  :ensure t)

(use-package company
  :ensure t)
