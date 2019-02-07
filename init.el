;; Set global conf folder
(defconst emacs-conf-dir (concat (getenv "HOME") "/.emacs.d/"))

;; Set custom file
(setq custom-file (expand-file-name "custom.el" emacs-conf-dir))
(when (file-exists-p custom-file)
  (load custom-file))

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
