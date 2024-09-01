;;; packages.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Melpa repo
;; https://github.com/radian-software/straight.el
;; Users of Emacs versions >= 27 will want to add:
(setq package-enable-at-startup nil)
(setq package-archives
      '(("gnu"          . "http://elpa.gnu.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa"        . "https://melpa.org/packages/")))

;; Bootstrap `straight'
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Bootstrap `use-package'
(straight-use-package 'use-package)

;; Always set `:straight t`
(setq straight-use-package-by-default t)

;; workaround of straight not playing well with eglot (among others probably)
;; https://github.com/radian-software/straight.el/issues/1146
(use-package straight
  :custom
  ;; add project and flymake to the pseudo-packages variable so straight.el doesn't download a separate version than what eglot downloads.
  (straight-built-in-pseudo-packages '(emacs nadvice python image-mode project flymake))
  (straight-use-package-by-default t))

;;; packages.el ends here
