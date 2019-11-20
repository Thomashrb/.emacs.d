;;-----------------------------;;
;; Theme                       ;;
;;-----------------------------;;
(use-package doom-themes
  :defer t
  :init
  (load-theme 'doom-one t)
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t
	;; doom-one specific settings
	doom-one-brighter-modeline nil
	doom-one-brighter-comments nil))

;; from https://github.com/hlissner/emacs-doom-themes
;; (let ((height (face-attribute 'default :height))))
;;  ;; for all linum/nlinum users
;;  (set-face-attribute 'linum nil :height height)
;;  ;; only for `linum-relative' users:
;;  (set-face-attribute 'linum-relative-current-face nil :height height)
;;  ;; only for `nlinum-relative' users:
;;  (set-face-attribute 'nlinum-relative-current-face nil :height height))
