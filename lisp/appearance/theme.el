;;; theme.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package stimmung-themes
  :straight (stimmung-themes :host github :repo "motform/stimmung-themes")
  :demand t
  :config
  (stimmung-themes-load-dark))

;;; theme.el ends here
