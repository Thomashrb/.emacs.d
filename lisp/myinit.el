;; Melpa repo
(require 'package) ;; You might already have this line
(setq package-archives
      '(("GNU ELPA"     . "http://elpa.gnu.org/packages/")
	("MELPA Stable" . "https://stable.melpa.org/packages/")
	("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("MELPA Stable" . 10)
	("GNU ELPA"     . 5)
	("MELPA"        . 0)))

;; Get use-package so we can pull the rest of ouer deps
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; enable company golbaly
(add-hook 'after-init-hook 'global-company-mode)

;; set default `company-backends'
(setq company-backends
      '((company-files          ; files & directory
	 company-keywords       ; keywords
	 company-yasnippet)
	(company-abbrev company-dabbrev)
	))
