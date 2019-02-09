;;; packages-basic.el --- Per-package confs with use-package tool

;;; Commentary:
;;; Code:

;; UI
(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-dark t))

(use-package highlight-indent-guides
  :ensure t
  :config
  (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-character ?\|)
  (setq highlight-indent-guides-delay 0)
  :hook
  (prog-mode . highlight-indent-guides-mode)
  (yaml-mode . highlight-indent-guides-mode))

;; Additional components
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

;; Git
(use-package diff-hl
  :ensure t
  :config
  (global-diff-hl-mode)
  (diff-hl-flydiff-mode))

;; Text manipulation
(use-package smartparens
  :ensure t
  :config
  (smartparens-global-mode 1))

(use-package py-yapf
  :ensure t)

;; Linting
(use-package flycheck
  :ensure t
  :config
  (setq flycheck-python-flake8-executable "python3")
  (setq flycheck-emacs-lisp-load-path 'inherit)
  :hook
  (emacs-lisp-mode . flycheck-mode)
  (python-mode . flycheck-mode))

(provide 'packages-basic)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; packages-basic.el ends here
