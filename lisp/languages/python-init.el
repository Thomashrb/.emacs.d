;; Light python mode
(use-package anaconda-mode
  :ensure t
  :defer t
  :init
  ;(add-to-list 'company-backends 'company-anaconda)
  (add-hook 'python-mode-hook 'anaconda-mode))

(use-package company-anaconda
  :ensure t)
