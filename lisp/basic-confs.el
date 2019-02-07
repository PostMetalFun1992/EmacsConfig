;;; basic-confs.el --- Per-package confs with use-package tool

;;; Commentary:
;;; Code:

;; Always maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; No useless bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; No welcome screen
(setq inhibit-startup-screen t)

;; No backups
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-inhibited t)

;; Pairs
(show-paren-mode 1)
(setq show-paren-delay 0)

(when (window-system)
  (set-frame-font "FreeMono-12"))

(provide 'basic-confs)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; basic-confs.el ends here
