(use-package flycheck-pony
  :config
  (setq create-lockfiles nil))

(use-package ponylang-mode
  :after
  (flycheck-pony)
  :config
  (setq ponylang-use-ctags t)
  (setq ponylang-format-on-save t)
  (add-hook
   'ponylang-mode-hook
   (lambda ()
     (set-variable 'indent-tabs-mode nil)
     (set-variable 'tab-width 2)))
  :bind
  (:map ponylang-mode-map
        ("C-c C-v" . ponylang-project-build)
        ("C-c C-c" . ponylang-project-run)
        ("<C-tab>" . company-ctags)))
