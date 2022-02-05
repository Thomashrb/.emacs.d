(use-package bqn-mode
  :straight (bqn-mode :type git :host github :repo "museoa/bqn-mode")
  :bind
  (:map bqn--mode-map
        ("C-x j j" . run-bqn)
        ("C-c C-k" . bqn-process-execute-buffer)
        ("C-M-x" . bqn-process-execute-line)
        ("C-c C-l" . bqn-process-execute-buffer-and-follow))
  :mode "\\.bqn\\'")
