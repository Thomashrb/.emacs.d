;; Ivy - Minibuffer menu
(use-package ivy
  :config
  (ivy-mode 1)
  ;; add ‘recentf-mode’ and bookmarks to ‘ivy-switch-buffer’.
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  ;; number of result lines to display
  (setq ivy-height 40)
  ;; does not count candidates
  (setq ivy-count-format "%d/%d")
  ;; no regexp by default
  (setq ivy-initial-inputs-alist nil)
  ;; configure regexp engine.
  (setq ivy-re-builders-alist
        ;; allow input not in order
        '((t . ivy--regex-ignore-order))))

(use-package wgrep)

(use-package counsel-projectile
  :after ivy)

;; Counsel - extend ivy
(use-package counsel
  :after counsel-projectile
  :config
  (counsel-projectile-mode 1)
  (global-set-key (kbd "C-c C-r") 'ivy-resume)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "M-y") 'counsel-yank-pop)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "C-h f") 'counsel-describe-function)
  (global-set-key (kbd "C-h v") 'counsel-describe-variable)
  (global-set-key (kbd "C-h l") 'counsel-find-library)
  (global-set-key (kbd "C-h i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "C-h u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c g") 'counsel-git-grep)
  (global-set-key (kbd "C-x b") 'counsel-buffer-or-recentf)
  (global-set-key (kbd "C-c p f") 'counsel-projectile-find-file)
  (global-set-key (kbd "C-c p p") 'counsel-projectile-switch-project)
  (global-set-key (kbd "C-c p s") 'counsel-projectile-rg)
  (global-set-key (kbd "C-c p b") 'counsel-projectile-switch-to-buffer)
  ;; After counsel has loaded we also need to set to re-set the ~ivy-height-list~.
  (setq ivy-height-alist '((t
                            lambda (_caller)
                            (/ (frame-height) 3)))))

;; Swiper - nicer searches
(use-package swiper
  :defer t
  :config
  (global-set-key (kbd "C-c s") 'swiper)
  (global-set-key (kbd "C-c S") 'swiper-thing-at-point))
