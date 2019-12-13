;; Melpa repo
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives
      '(("gnu"          . "http://elpa.gnu.org/packages/")
	("melpa-stable" . "https://stable.melpa.org/packages/")
	("melpa"        . "https://melpa.org/packages/")))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; Always set `:ensure t`
(with-eval-after-load 'use-package
  (setq use-package-always-ensure t))

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
;(add-hook 'before-save-hook 'whitespace-cleanup)

;; Use spaces instead of tabs
(setq-default c-basic-indent 2)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
