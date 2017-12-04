;; Melpa repo
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages") t) ;; unstable
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t) ;; stable
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

;; Get use-package so we can pull the rest of ouer deps
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; enable company golbaly
(add-hook 'after-init-hook 'global-company-mode)
