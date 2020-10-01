;; Ivy - Minibuffer menu
(use-package ivy
  :ensure t
  :commands (ivy-mode)
  :config
  ;; add ‘recentf-mode’ and bookmarks to ‘ivy-switch-buffer’.
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  ;; number of result lines to display
  (setq ivy-height 20)
  ;; does not count candidates
  (setq ivy-count-format "")
  ;; no regexp by default
  (setq ivy-initial-inputs-alist nil)
  ;; configure regexp engine.
  (setq ivy-re-builders-alist
    ;; allow input not in order
        '((t   . ivy--regex-ignore-order))))

;; Counsel - extend ivy
(use-package counsel
  :ensure t
  :config
  (global-set-key (kbd "C-c C-r") 'ivy-resume)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "C-h f") 'counsel-describe-function)
  (global-set-key (kbd "C-h v") 'counsel-describe-variable)
  (global-set-key (kbd "C-h l") 'counsel-find-library)
  (global-set-key (kbd "C-h i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "C-h u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c g") 'counsel-git-grep)
  (global-set-key (kbd "C-x b") 'counsel-switch-buffer)
  (global-set-key (kbd "C-c k") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate)
  (global-set-key (kbd "C-c p") 'counsel-projectile-find-file)
  (global-set-key (kbd "C-c P") 'counsel-projectile-switch-project))

;; list last ran commands first
(use-package smex
  :ensure t)

;; Swiper - nicer searches
(use-package swiper
  :ensure t
  :defer t
  :config
  (global-set-key "\C-s" 'swiper)
  (global-set-key "\C-r" 'swiper-all))
