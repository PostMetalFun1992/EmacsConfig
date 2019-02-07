;;; packages-confs.el --- Per-package confs with use-package tool

;;; Commentary:
;;; Code:

(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-dark t))

(use-package helm
  :ensure t)

(use-package treemacs
  :ensure t
  :config
  (progn
    (setq treemacs-show-hidden-files t
	  treemacs-sorting 'alphabetic-desc)))

(use-package smartparens
  :ensure t
  :config
  (smartparens-global-mode 1))

(use-package flycheck
  :ensure t
  :init
  (add-hook 'after-init-hook #'global-flycheck-mode))

(provide 'packages-confs)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; packages-confs.el ends here
