;;; init.el --- Entry point of whole configuration

;;; Commentary:
;;; Code:

;; Additional load paths
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'basic-confs)
(require 'customizations)
(require 'packages-manager)
(require 'packages-confs)
(require 'key-bindings)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; init.el ends here
