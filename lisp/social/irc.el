;;; irc.el --- .. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; ERC Config - https://www.gnu.org/software/emacs/manual/html_node/erc/Sample-Configuration.html
;; Load authentication info from an external source.  Put sensitive
;; passwords and the like in here.
;; (setq freenode-nickone-pass "mynickservpass1")
;; (setq freenode-nicktwo-pass "mynickservpass2")
;; (setq dalnet-pass "mynickservpass3")
;; (load "~/.emacs.d/.irc-auth")

;; This causes ERC to connect to the Freenode network upon hitting
;; C-c e f
(global-set-key "\C-cef" (lambda () (interactive)
                            (erc :server "irc.freenode.net" :port "6667"
                                 :nick "bbsl")))

;;; Options
;; Join channels whenever connecting to Freenode.
;; (setq erc-autojoin-channels-alist '(("freenode.net" "#emacs" "#nixos")))

;; Rename server buffers to reflect the current network name instead
;; of SERVER:PORT (e.g., "freenode" instead of "irc.freenode.net:6667").
;; This is useful when using a bouncer like ZNC where you have multiple
;; connections to the same server.
(setq erc-rename-buffers t)

;; Interpret mIRC-style color commands in IRC chats
(setq erc-interpret-mirc-color t)

;; The following are commented out by default, but users of other
;; Kill buffers for channels after /part
;; (setq erc-kill-buffer-on-part t)
;; Kill buffers for private queries after quitting the server
;; (setq erc-kill-queries-on-quit t)
;; Kill buffers for server messages after quitting the server
;; (setq erc-kill-server-buffer-on-quit t)

;;; irc.el ends here
