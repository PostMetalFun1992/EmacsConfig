;;; init.el --- Entry point of whole configuration

;;; Commentary:
;;; Code:

;; Additional load paths
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'basic-confs)
(require 'packages-manager)
(require 'packages-modes)
(require 'packages-confs)
(require 'packages-autocomplete)
(require 'customizations)
(require 'key-bindings)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; init.el ends here
