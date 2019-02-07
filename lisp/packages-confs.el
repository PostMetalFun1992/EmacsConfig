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

(provide 'packages-confs)
