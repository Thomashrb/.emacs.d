;;; org --- Summary:
;;
;;; Commentary:
;;
;; Using variables:
;; #+MACRO: clientname Jane Doe
;; On export {{{clientname}}} will expand to Jane Doe.
;;; Code:
(use-package ob-restclient) ; org-babel restclient

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (awk . t)))

(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
        (sequence "|" "CANCELED(c)")))

;; (make-directory "~/.org-jira")
(use-package org-jira
  :config
  (setq jiralib-url "https://beattech.atlassian.net")
  (setq org-jira-custom-jqls
        '(
          (:jql "project = BP AND status = 'TO DO' AND labels = Content ORDER BY created DESC"
                :filename "BP_content")
          (:jql "project = BP AND sprint in openSprints () "
                :filename "BP_SPRINT")
          (:jql "project = BP AND labels = Content AND sprint in openSprints () "
                :filename "BP_content_SPRINT")
          )))
;;; org.el ends here
