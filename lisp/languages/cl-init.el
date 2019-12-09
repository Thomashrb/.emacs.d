(use-package slime
  :config
  (setq inferior-lisp-program "/usr/bin/sbcl")
  (setq slime-contribs '(slime-fancy slime-quicklisp slime-asdf slime-company)))

(use-package common-lisp-snippets
  :after (yasnippet))

;; After installing: https://www.quicklisp.org/beta/
;;(load (expand-file-name "~/quicklisp/slime-helper.el"))
