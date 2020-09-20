(use-package bpftrace-mode
  :defer t
  :mode ("\\.d\\'" . bpftrace-mode)
  :init
  ;; turn of indent for cc-mode when loads
  (setq c-syntactic-indentation nil))
