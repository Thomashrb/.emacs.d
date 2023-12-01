;;; org.el --- .. -*- lexical-binding: t -*-
;;; Summary:
;;; Commentary:
;; Using variables:
;; #+MACRO: clientname Jane Doe
;; On export {{{clientname}}} will expand to Jane Doe.
;;; Code:
(use-package org
  :bind (("C-c o o t" . org-timer-start)
         ("C-c o o s" . org-timer-stop)
         ("C-c o o r" . org-timer-set-timer)
         ("C-c o o p" . org-timer)
         ("C-c o o o" . org-clock-out)
         ("C-c o o j" . org-clock-orgto)
         ("C-c o o c" . org-capture)
         ("C-c o o l" . org-capture-orgto-last-stored)
         ("C-c o o n" . org-next-link)
         ("C-c o o p" . org-previous-link)
         ("C-c o o O" . org-open-at-point)))

(use-package ob-restclient) ; org-babel restclient

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (awk . t)
   (python . t)))

(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")))

;;; org.el ends here
