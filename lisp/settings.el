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

;; Prompt before killing emacs
(setq confirm-kill-emacs 'y-or-n-p)

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
