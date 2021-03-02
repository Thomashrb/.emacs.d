;; https://elixirforum.com/t/emacs-elixir-setup-configuration-wiki/19196
(use-package flymake-elixir)

(use-package elixir-mode
  :defer t
  :after (flymake-elixir flymake-easy))

(use-package exunit
  :defer t)
