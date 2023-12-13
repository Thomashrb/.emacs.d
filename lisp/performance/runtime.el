;;; runtime.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; minimize laggynes while scrolling
;; - fontifies the buffer when idle.
(setq jit-lock-stealth-time 1.25)
(setq jit-lock-stealth-nice 0.5) ;; Seconds between font locking.
(setq jit-lock-chunk-size 4096)

;;; runtime.el ends here
