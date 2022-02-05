;; https://github.com/julia-vscode/LanguageServer.jl
;; JIT compilation of LanguageServer.jl can cause a
;; long delay which may cause issues with lsp-mode,
;; I recommend using PackageCompiler.jl to AOT compile LanguageServer.jl into your julia image. Something like:
;; julia> using Pkg
;; julia> Pkg.add("PackageCompiler")
;; julia> using PackageCompiler
;; julia> create_sysimage(:LanguageServer, sysimage_path="/path/to/languageserver.so")

(use-package lsp-julia
  :config
  (setq lsp-julia-default-environment "~/.julia/environments/v1.7"))

(use-package julia-repl
  :config
  (set-language-environment "UTF-8"))

(use-package julia-mode
  :after julia-repl
  :hook julia-repl-mode
  :bind
  (:map julia-mode-map
        ("C-x j j" . julia-repl)
        ("C-M-x" . julia-repl-send-line)
        ("C-c C-k" . julia-repl-send-buffer))
  :mode "\\.jl\\'")
