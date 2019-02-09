;;; packages-modes.el --- Configure additional modes

;;; Commentary:
;;; Code:

(use-package yaml-mode
  :ensure t
  :hook
  (yaml-mode . linum-mode))

(use-package haskell-mode
  :ensure t)

(use-package js2-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

(use-package rjsx-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode)))

(provide 'packages-modes)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; packages-modes.el ends here
