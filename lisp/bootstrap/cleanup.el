;; Make backupdir and dont litter withbackupfiles
(defvar backup-dir "~/.emacs.d/backups/")
;; safer way to backup
(setq backup-by-copying t)
;; faster way t backup
;(setq backup-by-copying-when-linked t)
(setq backup-directory-alist (list (cons "." backup-dir)))
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;; turn off backups
;(setq make-backup-files nil)
