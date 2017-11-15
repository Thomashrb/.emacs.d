;; Theme
;; (use-package doom-themes
;;   :ensure t)
;; (require 'doom-themes)
;; ;; Global settings (defaults)
;; (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
;;       doom-themes-enable-italic t) ; if nil, italics is universally disabled
;; ;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; ;; may have their own settings.
;; (load-theme 'doom-one t)
;; ;; Enable flashing mode-line on errors
;; ::(doom-themes-visual-bell-config)
;; ;; Enable custom neotree theme
;; ;; (doom-themes-neotree-config)  ; all-the-icons fonts must be installed!
;; ;; Corrects (and improves) org-mode's native fontification.
;; (doom-themes-org-config)
;; (custom-set-variables
;;   '(package-selected-packages (quote (doom-themes))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

(use-package moe-theme
  :ensure t)
(require 'moe-theme)
;; Show highlighted buffer-id as decoration. (Default: nil)
(setq moe-theme-highlight-buffer-id t)

;; Resize titles (optional).
(setq moe-theme-resize-markdown-title '(1.5 1.4 1.3 1.2 1.0 1.0))
(setq moe-theme-resize-org-title '(1.5 1.4 1.3 1.2 1.1 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(1.5 1.4 1.3 1.2 1.1 1.0))

;; Choose a color for mode-line.(Default: blue)
(moe-theme-set-color 'w/b)

;; Finally, apply moe-theme now.
;; Choose what you like, (moe-light) or (moe-dark)
(moe-dark)
