;; Rainbowdelimiters - Visualy pair up delimiters
(use-package rainbow-delimiters)
(add-hook 'buffer-list-update-hook 'rainbow-delimiters-mode)
;; enable in programming mode only
;(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
