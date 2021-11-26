;; Melpa repo
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

;; enable company golbaly
(add-hook 'after-init-hook 'global-company-mode)

;; set default `company-backends'
(setq company-backends
      '((company-files          ; files & directory
         company-keywords       ; keywords
         company-yasnippet)
        (company-abbrev company-dabbrev)))

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; Enable flyspell for prog mode and text mode
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; Whitespace cleanup
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Use spaces instead of tabs
(setq-default c-basic-indent 2)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; Path
(when (equal "guix" system-name)
  (setq exec-path '("~/bin"
                  "/run/setuid-programs"
                  "~/.config/guix/current/bin"
                  "~/.guix-profile/bin"
                  "~/.guix-profile/sbin"
                  "/run/current-system/profile/bin"
                  "/run/current-system/profile/sbin"
                  "~/dotfiles/emacs/")))
