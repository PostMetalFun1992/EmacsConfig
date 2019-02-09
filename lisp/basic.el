;;; basic.el --- Core emacs settings

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

;; Highlight pairs
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Line numbers
(add-hook 'prog-mode-hook 'linum-mode)

;; Font
(when (window-system)
  (set-frame-font "FreeMono-12"))

(provide 'basic)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; basic.el ends here
