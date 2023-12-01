;;; go-init.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package go-mode
  :defer t
  :mode ("\\.go\\'" . go-mode))

;; Configure eglot for go
;; from: https://github.com/golang/tools/blob/master/gopls/doc/emacs.md

(defun project-find-go-module (dir)
  (when-let ((root (locate-dominating-file dir "go.mod")))
    (cons 'go-module root)))

(cl-defmethod project-root ((project (head go-module)))
  (cdr project))

(add-hook 'project-find-functions #'project-find-go-module)

(defun eglot-format-buffer-on-save ()
  (add-hook 'before-save-hook #'eglot-format-buffer -10 t))
(add-hook 'go-mode-hook #'eglot-format-buffer-on-save)

;;; go-init.el ends here
