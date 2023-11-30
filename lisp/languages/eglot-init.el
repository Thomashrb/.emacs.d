(use-package eglot
  :config
  (add-to-list 'eglot-server-programs '(scala-mode . ("metals-emacs")))
  ;; Automatically start metals for Scala files.
;;  :hook (scala-mode . eglot-ensure)
  :bind
  (:map eglot-mode-map
      ("C-c C-r" . eglot-rename)
      ("C-c C-f" . eglot-format-buffer)
      ("C-c C-o" . eglot-code-action-organize-imports)))

;; ex golang crashes with eglot (flymake?) without updated version of jsonrpc
(use-package jsonrpc)
