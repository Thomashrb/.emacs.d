(load "~/.emacs.d/request/aoc.el")

(use-package el-aocd
  :straight (el-aocd :type git :host github :repo "thomashrb/el-aocd")
  :hook elaocd-login)
