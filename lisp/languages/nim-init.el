;;  https://github.com/purcell/exec-path-from-shell

(use-package nim-mode
  :init
  (add-hook 'nim-mode-hook 'nimsuggest-mode)
  (add-hook 'nim-mode-hook 'flycheck-mode)
  :config
  (setq nimsuggest-path "~/.nimble/bin/nimsuggest"
        nim-compile-command "~/.nimble/bin/nim")
  (auto-fill-mode 0)
  (electric-indent-local-mode 0)
  :mode "\\.nim\\'")
