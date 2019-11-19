;;; yaml-init --- Yaml lang setup
;;; Commentary:
;;; Everything yaml specific
;;; Code:
(use-package yaml-mode
  :mode (("\\.yml\\'" . yaml-mode)
	 ("\\.yaml\\'" . yaml-mode)))

 (use-package ansible)
;;; yaml-init.el ends here
