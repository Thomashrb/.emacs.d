;; https://elixirforum.com/t/emacs-elixir-setup-configuration-wiki/19196
(use-package flymake-elixir)

(use-package elixir-mode
  :defer t
  :after (flymake-elixir flymake-easy)
  :init
  (add-hook 'before-save-hook 'whitespace-cleanup)
  :bind
  (:map elixir-mode-map
        ("C-c C-f" . elixir-format)))

(use-package exunit
  :defer t)
