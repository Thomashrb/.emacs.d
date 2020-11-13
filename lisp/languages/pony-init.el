(use-package flycheck-pony)

(use-package ponylang-mode
  :config
  (setq create-lockfiles nil)
  :after
  (flycheck-pony))
