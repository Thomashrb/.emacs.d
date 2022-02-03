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
   (awk . t)
   (python . t)))

(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")))


;;(make-directory "~/.org-jira")
(use-package org-jira
  :config
  (setq jiralib-url "https://beattech.atlassian.net")
  (setq org-jira-custom-jqls
        '((:jql "('Team[Team]' in (20,2)
                 OR project = 'Beat Backend' AND labels = Content)
                 and status in ('To Do')"
                :filename "CONTENT_backlog")
          (:jql "('Team[Team]' in (20,2)
                 OR project = 'Beat Backend' AND labels = Content)
                 and sprint in openSprints()"
                :filename "CONTENT_sprint")
          (:jql "('Team[Team]' in (20,2)
                 OR project = 'Beat Backend' AND labels = Content)
                 and assignee in (currentUser())
                 and sprint in openSprints()"
                :filename "CONTENT_me"))))

;;; org.el ends here
