(use-package helm
   :ensure t
   :commands helm-mode
   :config
   (helm-mode 1)
   (setq helm-buffers-fuzzy-matching t)
   (setq helm-autoresize-mode t)
   (setq helm-buffer-max-length 40)
   (global-set-key (kbd "M-x") 'helm-M-x)
   (global-set-key (kbd "C-x b") 'helm-mini)
   (global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
   (global-set-key (kbd "C-x C-f") 'helm-find-files))

;; (use-package helm-smex
;;   :ensure t
;;   :config
;;   (global-set-key [remap execute-extended-command] #'helm-smex)
;;   (global-set-key (kbd "M-X") #'helm-smex-major-mode-commands))

(use-package helm-swoop
   :ensure t
   :config
   (global-set-key (kbd "C-s") 'helm-swoop)
   (global-set-key (kbd "C-c s") 'helm-multi-swoop-all))

(use-package helm-projectile
   :ensure t
   :config
   (global-set-key (kbd "C-c p") 'helm-projectile))

(use-package helm-ag
   :ensure t
   :config
   (global-set-key (kbd "C-c k") 'helm-ag))
