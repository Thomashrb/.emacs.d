;;-----------------------------;;
;; Theme                       ;;
;;-----------------------------;;

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use "doom-atoms" for more minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package spaceline
  :init
  (spaceline-spacemacs-theme)
  :config
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (set-face-attribute 'spaceline-evil-emacs nil :background "#be84ff")
  (set-face-attribute 'spaceline-evil-insert nil :background "#5fd7ff")
  (set-face-attribute 'spaceline-evil-motion nil :background "#ae81ff")
  (set-face-attribute 'spaceline-evil-normal nil :background "#a6e22e")
  (set-face-attribute 'spaceline-evil-replace nil :background "#f92672")
  (set-face-attribute 'spaceline-evil-visual nil :background "#fd971f"))
