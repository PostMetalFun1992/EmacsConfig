;;; packages-autocomplete.el --- Configure company mode

;;; Commentary:
;;; Code:

(use-package company-jedi
  :ensure t)

(use-package company-tern
  :ensure t)

(use-package company
  :after
  (company-jedi company-tern)
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-selection-wrap-around t)
  (company-tng-configure-default)
  (add-to-list 'company-backends 'company-jedi)
  (add-to-list 'company-backends 'company-tern)
  :hook
  (python-mode . company-mode)
  (emacs-lisp-mode . company-mode)
  (js2-mode . company-mode))

(provide 'packages-autocomplete)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; packages-autocomplete.el ends here
