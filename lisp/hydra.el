(use-package hydra
  :init
  (global-set-key
   (kbd "C-c m g")
   (defhydra hydra-git-gutter (:body-pre (git-gutter-mode 1)
                                         :hint nil)
     "
     Git gutter:
       _j_: next hunk        _s_tage hunk     _q_uit
       _k_: previous hunk    _r_evert hunk    _Q_uit and deactivate git-gutter
       ^ ^                   _p_opup hunk
       _h_: first hunk
       _l_: last hunk        set start _R_evision"
     ("j" git-gutter:next-hunk)
     ("k" git-gutter:previous-hunk)
     ("h" (progn (goto-char (point-min))
                 (git-gutter:next-hunk 1)))
     ("l" (progn (goto-char (point-min))
                 (git-gutter:previous-hunk 1)))
     ("s" git-gutter:stage-hunk)
     ("r" git-gutter:revert-hunk)
     ("p" git-gutter:popup-hunk)
     ("R" git-gutter:set-start-revision)
     ("q" nil :color blue)
     ("Q" (progn (git-gutter-mode -1)
                 ;; git-gutter-fringe doesn't seem to
                 ;; clear the markup right away
                 (sit-for 0.1)
                 (git-gutter:clear))
      :color blue)))
  (global-set-key
   (kbd "C-c o j")
   (defhydra hydra-org-jira (:color blue)
     "Org Jiras"
     ("j" org-jira-get-issues-from-custom-jql "custom jql")
     ("i" org-jira-get-issues "get issues")
     ("r" org-jira-refresh-issue "refresh issue")
     ("R" org-jira-refresh-issues-in-buffer "refresh buffer issues")
     ("p" org-jira-progress-issue "progress issue")
     ("c" org-jira-add-comment "comment issue")
     ("q" nil "quit" :color blue)))
  (global-set-key
   (kbd "C-c o o")
   (defhydra hydra-global-org (:color blue)
     "Org"
     ("t" org-timer-start "Start Timer")
     ("s" org-timer-stop "Stop Timer")
     ("r" org-timer-set-timer "Set Timer") ; This one requires you be in an orgmode doc, as it sets the timer for the header
     ("p" org-timer "Print Timer") ; output timer value to buffer
     ("w" (org-clock-in '(4)) "Clock-In") ; used with (org-clock-persistence-insinuate) (setq org-clock-persist t)
     ("o" org-clock-out "Clock-Out") ; you might also want (setq org-log-note-clock-out t)
     ("j" org-clock-goto "Clock Goto") ; global visit the clocked task
     ("c" org-capture "Capture") ; Don't forget to define the captures you want http://orgmode.org/manual/Capture.html
     ("l" org-capture-goto-last-stored "Last Capture")
     ("n" org-next-link "Next Link")
     ("p" org-previous-link "Prev Link")
     ("O" org-open-at-point "Open link")))
  (global-set-key
   (kbd "C-c (")
    (defhydra ptrv/smartparens (:hint nil)
    "
    Sexps (quit with _q_)
    ^Nav^ ^Barf/Slurp^ ^Depth^
    ^---^------------^----------^-----------------^-----^-----------------
    _f_: forward _→_: slurp forward _R_: splice
    _b_: backward _←_: barf forward _r_: raise
    _u_: backward ↑ _C-<right>_: slurp backward _↑_: raise backward
    _d_: forward ↓ _C-<left>_: barf backward _↓_: raise forward
    _p_: backward ↓
    _n_: forward ↑
    ^Kill^ ^Misc^ ^Wrap^
    ^----^-----------^----^-----------------------^----^------------------
    _w_: copy _j_: join _(_: wrap with ( )
    _k_: kill _s_: split _{_: wrap with { }
    ^^ _t_: transpose _'_: wrap with ' '
    ^^ _c_: convolute _\"_: wrap with \" \"
    ^^ _i_: indent defun"
    ("q" nil)
    ;; Wrapping
    ("(" (lambda (_) (interactive "P") (sp-wrap-with-pair "(")))
    ("{" (lambda (_) (interactive "P") (sp-wrap-with-pair "{")))
    ("'" (lambda (_) (interactive "P") (sp-wrap-with-pair "'")))
    ("\"" (lambda (_) (interactive "P") (sp-wrap-with-pair "\"")))
    ;; Navigation
    ("f" sp-forward-sexp )
    ("b" sp-backward-sexp)
    ("u" sp-backward-up-sexp)
    ("d" sp-down-sexp)
    ("p" sp-backward-down-sexp)
    ("n" sp-up-sexp)
    ;; Kill/copy
    ("w" sp-copy-sexp)
    ("k" sp-kill-sexp)
    ;; Misc
    ("t" sp-transpose-sexp)
    ("j" sp-join-sexp)
    ("s" sp-split-sexp)
    ("c" sp-convolute-sexp)
    ("i" sp-indent-defun)
    ;; Depth changing
    ("R" sp-splice-sexp)
    ("r" sp-splice-sexp-killing-around)
    ("<up>" sp-splice-sexp-killing-backward)
    ("<down>" sp-splice-sexp-killing-forward)
    ;; Barfing/slurping
    ("<right>" sp-forward-slurp-sexp)
    ("<left>" sp-forward-barf-sexp)
    ("C-<left>" sp-backward-barf-sexp)
    ("C-<right>" sp-backward-slurp-sexp))))
