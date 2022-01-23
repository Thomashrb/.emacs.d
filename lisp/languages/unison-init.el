(use-package unisonlang-mode
  :straight (unisonlang-mode :type git :host github :repo "thomashrb/unison-mode-emacs")
  :config
  (add-hook 'after-init-hook #'auto-revert-mode)
  :mode (("\\.u\\'" . unisonlang-mode)))
