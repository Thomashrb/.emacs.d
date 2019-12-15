;; https://elixirforum.com/t/emacs-elixir-setup-configuration-wiki/19196
(use-package flymake-elixir)

(use-package elixir-mode
  :after (flymake-elixir flymake-easy)
  :init
  (add-hook 'before-save-hook 'whitespace-cleanup))
