;; Additional load paths
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'basic-confs)
(require 'packages-manager)
(require 'packages-confs)
(require 'key-bindings)
