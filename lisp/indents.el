;;; indents.el --- Lanugage specific indents

;;; Commentary:
;;; Code:

(defun add-html-specific-indent ()
  "Add html specific indent."
  (setq indent-tabs-mode t)
  (setq tab-width 8))

(add-hook 'html-mode-hook 'add-html-specific-indent)

(defun add-js-specific-indent ()
  "Add js specific indent."
  (setq indent-tabs-mode nil)
  (setq tab-width 2)
  (setq js-indent-level 2))

(add-hook 'js2-mode-hook 'add-js-specific-indent)

(defun add-python-specific-indent ()
  "Add python specific indent."
  (setq indent-tabs-mode nil)
  (setq tab-width 4))

(add-hook 'python-mode-hook 'add-python-specific-indent)

(defun add-ruby-specific-indent ()
  "Add ruby specific indent."
  (setq indent-tabs-mode nil)
  (setq tab-width 2))

(add-hook 'ruby-mode-hook 'add-ruby-specific-indent)

(provide 'indents)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; indents.el ends here
