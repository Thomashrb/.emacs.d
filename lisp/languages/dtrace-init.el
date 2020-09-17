(use-package dtrace-script-mode
  :defer t
  :mode ("\\.d\\'" . dtrace-script-mode)
  :config
  ;; turn off indent for cmode which dtrace-mode inherits
  (add-to-list 'c-mode-common-hook
               (lambda () (setq c-syntactic-indentation nil))))
