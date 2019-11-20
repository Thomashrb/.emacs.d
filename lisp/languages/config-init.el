;;; config-init --- Config langs setup
;;; Commentary:
;;; Handle configuration languages
;;; Code:
(use-package yaml-mode
  :mode (("\\.yml\\'" . yaml-mode)
	 ("\\.yaml\\'" . yaml-mode)))

(use-package ansible)

(use-package toml-mode
  :mode (("\\.toml\\'" . yaml-mode)))
;;; config-init.el ends here
