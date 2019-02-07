;;; key-bindings.el --- Global keybindings space

;;; Commentary:

;; Do not set any keybindings in another modules!

;;; Code:

;; Global keys
(global-set-key (kbd "C-t") 'treemacs)
(global-set-key (kbd "C-x <left>") 'previous-multiframe-window)
(global-set-key (kbd "C-x <right>") 'next-multiframe-window)
(global-set-key (kbd "C-x h") 'helm-imenu)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

;; Python - specific keys
;; (define-key python-mode-map (kbd "f f") 'py-yapf-buffer)

(provide 'key-bindings)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; key-bindings.el ends here
