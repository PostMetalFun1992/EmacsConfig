;;; packages-manager.el --- Package manager basic configuration

;;; Commentary:
;;; Code:

(require 'package)
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(provide 'packages-manager)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; packages-manager.el ends here
