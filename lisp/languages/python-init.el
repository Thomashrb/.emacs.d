(use-package anaconda-mode
  :ensure t)
(use-package company-anaconda
  :ensure t)

(add-hook 'python-mode-hook 'anaconda-mode)
(add-to-list 'company-backends 'company-anaconda)
