;;; init.el --- Entry point of whole configuration

;;; Commentary:
;;; Code:

;; Additional load paths
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'basic)
(require 'packages-manager)
(require 'packages-modes)
(require 'packages-basic)
(require 'packages-company)
(require 'indents)
(require 'keybindings)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; init.el ends here
