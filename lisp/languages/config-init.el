;;; config-init --- Config langs setup
;;; Commentary:
;;; Handle configuration languages
;;; Code:
(use-package ansible)

(use-package yaml-mode
  :after ansible
  :config
  (add-hook 'yaml-mode-hook '(lambda () (ansible 1)))
  :mode
  (("\\.yml\\'" . yaml-mode)
  (("\\.yaml\\'" . yaml-mode))))

(use-package flycheck-yamllint
  :init
  (progn
    (eval-after-load 'flycheck
      '(add-hook 'flycheck-mode-hook 'flycheck-yamllint-setup))))

(use-package toml-mode
  :mode (("\\.toml\\'" . toml-mode)))

(use-package json-reformat)

(use-package json-mode
  :after json-reformat
  :mode (("\\.json\\'" . json-mode))
  :bind
  (:map json-mode-map
      ("C-c C-f" . json-reformat-region)))

;;; config-init.el ends here
