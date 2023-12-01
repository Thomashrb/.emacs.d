;;; startup.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Stolen from doom emacs

;; GARBAGE COLLECTION
;; Using garbage magic hack.
 (use-package gcmh
   :config
   (gcmh-mode 1))
;; Setting garbage collection threshold
(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)

;; Profile emacs startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "*** Emacs loaded in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))

;; Silence compiler warnings
(setq comp-async-report-warnings-errors nil)


;; NATIVE COMPILE
(if (boundp 'comp-deferred-compilation)
    (setq comp-deferred-compilation nil))
;;    (setq native-comp-deferred-compilation nil)) ;; TODO check why this does not exist in emacs 29
;; In noninteractive sessions, prioritize non-byte-compiled source files to
;; prevent the use of stale byte-code. Otherwise, it saves us a little IO time
;; to skip the mtime checks on every *.elc file.
(setq load-prefer-newer noninteractive)

;;; startup.el ends here
