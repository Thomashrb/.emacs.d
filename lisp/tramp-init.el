;; from: https://emacs.stackexchange.com/questions/18262/tramp-how-to-add-a-agent-forwarding-to-ssh-connections
;; to use load manually with
;; M-: eval expression
(defun add-ssh-agent-to-tramp ()
  (cl-pushnew '("-A")
              (cadr (assoc 'tramp-login-args
                           ; if on Windows using Putty with Pageant,
                           ; replace "ssh" with "plink"
                           (assoc "ssh" tramp-methods)))
              :test #'equal))

;; allow tramp access using docker attach interface
(use-package docker-tramp)
