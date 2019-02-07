;;; key-bindings.el --- Global keybindings space

;;; Commentary:

;; Do not set any keybindings in another modules!

;;; Code:

(global-set-key (kbd "C-t") 'treemacs)
(global-set-key (kbd "C-x <left>") 'previous-multiframe-window)
(global-set-key (kbd "C-x <right>") 'next-multiframe-window)

(provide 'key-bindings)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

;;; key-bindings.el ends here
