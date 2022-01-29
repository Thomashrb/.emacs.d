;; toggle-input-method
(use-package dyalog-mode
  :config
  (setq )
  :bind
  (:map dyalog-mode-map
        ("C-x j j" . dyalog-editor-connect)
        ("C-x j J" . dyalog-ride-session))
  :mode "\\.dyalog\\'")

(use-package gnu-apl-mode
  :config
  (setq text-scale-mode-step 10)
  (setq gnu-apl-show-tips-on-start nil)
  (setq buffer-face-mode-face 'gnu-apl-default)
  :hook buffer-face-mode
  :mode "\\.apl\\'")
