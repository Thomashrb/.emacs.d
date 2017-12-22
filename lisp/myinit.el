;; Melpa repo
(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;  (add-to-list 'package-archives (cons "melpa" url) t)
  )
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; Get use-package so we can pull the rest of ouer deps
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; enable company golbaly
(add-hook 'after-init-hook 'global-company-mode)
