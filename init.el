;; Additional load paths
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(add-to-list 'load-path "~/.emacs.d/lisp/")

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
	  treemacs-sorting 'alphabetic-desc)))

(require 'key-bindings)
