;; Light python mode
(use-package company-anaconda)

(use-package anaconda-mode
  :defer t
  :after (company-anaconda)
  :init
  ;(add-to-list 'company-backends 'company-anaconda)
  (add-hook 'python-mode-hook 'anaconda-mode))
