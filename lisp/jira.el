;; (make-directory "~/.org-jira")
(use-package org-jira
  :config
  (setq jiralib-url "https://beattech.atlassian.net")
  (setq org-jira-custom-jqls
        '(
          (:jql "project = BP AND labels = Content ORDER BY created DESC"
                :filename "BP_content")
          (:jql "project = BP AND sprint in openSprints () "
                :filename "BP_SPRINT")
          )))
