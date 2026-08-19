;;; theme.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package modus-themes
  :config
  (setq modus-themes-mixed-fonts t
        modus-themes-variable-pitch-ui t
        modus-themes-italic-constructs t
        modus-themes-bold-constructs t
        modus-themes-completions '((t . (bold)))
        modus-themes-prompts '(bold)
        modus-themes-headings
        '((agenda-structure . (variable-pitch light 2.2))
          (agenda-date . (variable-pitch regular 1.3))
          (t . (regular 1.15))))

  (setq modus-themes-common-palette-overrides nil)
  (modus-themes-load-theme 'modus-vivendi))

;;; theme.el ends here
