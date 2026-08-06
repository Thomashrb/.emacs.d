;;; eglot-init.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package eglot
  :ensure nil
  :config
  (add-to-list 'eglot-server-programs '(scala-mode . ("metals-emacs")))
  :bind
  (:map eglot-mode-map
      ;; M-. jump-to-definition
      ("C-c C-r" . eglot-rename)
      ("C-c C-f" . eglot-format-buffer)
      ("C-c C-o" . eglot-code-action-organize-imports)))

;; ex golang crashes with eglot (flymake?) without updated version of jsonrpc
(use-package jsonrpc)

;; Volar's hybrid mode sends tsserver/request notifications that Eglot
;; does not answer.  Replace any existing entry so this is the one used.
(with-eval-after-load 'eglot
  (setf (alist-get 'vue-mode eglot-server-programs)
        '("vue-language-server"
          "--stdio"
          :initializationOptions
          (:typescript
           (:tsdk "/home/bbsl/.npm-global/lib/node_modules/typescript/lib")
           :vue
           (:hybridMode :json-false)))))

(use-package eldoc
  :ensure nil)

;;; eglot-init.el ends here
