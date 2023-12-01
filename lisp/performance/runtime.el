;;; runtime.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))

;;; runtime.el ends here
