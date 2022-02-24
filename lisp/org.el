;;; org --- Summary:
;;
;;; Commentary:
;;
;; Using variables:
;; #+MACRO: clientname Jane Doe
;; On export {{{clientname}}} will expand to Jane Doe.
;;; Code:
(use-package org)

(use-package ob-restclient) ; org-babel restclient

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (awk . t)
   (python . t)))

(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")))

;;(make-directory "~/.org-jira")
(load "~/.emacs.d/request/jira.el" )
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

(use-package org-roam
  :custom
  (org-roam-directory (file-truename "~/mydocuments/org-files/"))
  :bind (("C-c o r l" . org-roam-buffer-toggle)
         ("C-c o r f" . org-roam-node-find)
         ("C-c o r g" . org-roam-graph)
         ("C-c o r i" . org-roam-node-insert)
         ("C-c o r c" . org-roam-capture)
         ;; Dailies
         ("C-c o r j" . org-roam-dailies-capture-today))
  :config
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))
;;; org.el ends here
