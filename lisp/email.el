;;; Email --- summary
;; instrument local email
;;; Commentary:
;; https://notmuchmail.org/emacstips/
;; notmuch     ; index emails
;; offlineimap ; get emails
;; msmtp       ; send emails
;; msmtp-mta   ; sendmail alias for msmtp
;;; Code:

(use-package notmuch
  :config
  (global-set-key (kbd "C-c m m") 'notmuch)
  ;; lessen the load on large inboxes
  (setq notmuch-show-indent-messages-width 0)
  (setq notmuch-show-indent-content nil)
  ;; we substitute sendmail with msmtp
  (setq sendmail-program "msmtp")
  (setq message-send-mail-function 'message-send-mail-with-sendmail)
  ;; Comments from notmuch emacs tips:
  ;; A typical scenario is that you want to use the company SMTP server for email coming from your company email address, and your personal server for personal email.
  ;; If msmtp is passed the envelope address on the command line (the -f/--from option) it will automatically pick the matching account.
  ;; The only trick here seems to be getting emacs to actually pass the envelope from. There are a number of overlapping configuration variables that control this,
  ;; and it's a little confusion, but setting these three works for me:
  (setq mail-specify-envelope-from t)
  (setq message-sendmail-envelope-from "thomas@beat.no")
  (setq notmuch-saved-searches
  `((:name "inbox" :sort-order newest-first :search-type 'tree :query "tag:inbox" :key ,(kbd "i"))
    (:name "unread" :sort-order newest-first :search-type 'tree :query "tag:unread" :key ,(kbd "u"))
    (:name "careers" :sort-order newest-first :search-type 'tree :query "tag:careers" :key ,(kbd "C"))
    (:name "ops" :sort-order newest-first :search-type 'tree :query "tag:ops" :key ,(kbd "o"))
    (:name "content" :sort-order newest-first :search-type 'tree :query "tag:content" :key ,(kbd "c"))
    (:name "gitter" :sort-order newest-first :search-type 'tree :query "tag:gitter" :key ,(kbd "g"))
    (:name "gitlab" :sort-order newest-first :search-type 'tree :query "tag:gitlab" :key ,(kbd "G"))
    (:name "flagged" :sort-order newest-first :search-type 'tree :query "tag:flagged" :key ,(kbd "f"))
    (:name "sent" :sort-order newest-first :search-type 'tree :query "tag:sent" :key ,(kbd "t"))
    (:name "drafts" :sort-order newest-first :search-type 'tree :query "tag:draft" :key ,(kbd "D"))
    (:name "spam" :sort-order newest-first :search-type 'tree :query "tag:spam" :key ,(kbd "s"))
    (:name "all mail" :sort-order newest-first :search-type 'tree :query "*" :key ,(kbd "a")))))
;;; email-init.el ends here
