;; Set global conf folder
(defconst emacs-conf-dir (concat (getenv "HOME") "/.emacs.d/"))

;; Set custom file
(setq custom-file (expand-file-name "custom.el" emacs-conf-dir))
(when (file-exists-p custom-file)
  (load custtom-file))

;; No useless bars
(menu-bar-mode -1)
(tool-bar-mode -1)

;; No welcome screen
(setq inhibit-startup-screen t)

;; No backups
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-inhibited t)

;; Line numbers
(global-linum-mode t)

;; Package-el config
(require 'package)
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(use-package solarized-theme
  :ensure t)

(use-package helm
  :ensure t)

(use-package treemacs
  :ensure t
  :config
  (progn
    (setq treemacs-show-hidden-files t
	  treemacs-sorting 'alphabetic-desc))
  :bind
  (:map global-map
        ("C-x t t" . treemacs)))
