;;; packages-confs.el --- Per-package confs with use-package tool

;;; Commentary:
;;; Code:

(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-dark t))

(use-package helm
  :ensure t
  :config
  (helm-autoresize-mode 1)
  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-max-height 40)
  (setq helm-split-window-inside-p t))

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
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (setq flycheck-python-flake8-executable "python3"))

(use-package diff-hl
  :ensure t
  :config
  (global-diff-hl-mode))

(use-package highlight-indent-guides
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-character ?\|)
  (setq highlight-indent-guides-delay 0))

(use-package py-yapf
  :ensure t)

(use-package company-jedi
  :ensure t)

(use-package company
  :after (company-jedi)
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-selection-wrap-around t)
  (company-tng-configure-default)
  (add-hook 'after-init-hook 'global-company-mode)
  (add-to-list 'company-backends 'company-jedi))

(provide 'packages-confs)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; packages-confs.el ends here
