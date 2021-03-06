;;; keybindings.el --- Global keybindings space

;;; Commentary:

;; Do not set any keybindings in another modules!

;;; Code:

;; Global keys
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(global-set-key (kbd "C-x t") 'treemacs)

(global-set-key (kbd "C-x <left>") 'previous-multiframe-window)
(global-set-key (kbd "C-x <right>") 'next-multiframe-window)

(global-set-key (kbd "C-x h") 'helm-imenu)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

(global-set-key (kbd "C-x g") 'goto-line)
(global-set-key (kbd "C-<down>") 'scroll-up-line)
(global-set-key (kbd "C-<up>") 'scroll-down-line)

(defun add-python-specific-keys ()
  "Add python specific keybindings."
  (local-set-key (kbd "C-x f") 'py-yapf-buffer))

(add-hook 'python-mode-hook 'add-python-specific-keys)

(defun add-haskell-specific-keys ()
  "Add haskell specific keybindings."
  (local-set-key (kbd "C-x f") 'haskell-mode-stylish-buffer))

(add-hook 'haskell-mode-hook 'add-haskell-specific-keys)

(provide 'keybindings)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; keybindings.el ends here
