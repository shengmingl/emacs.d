(when (maybe-require-package 'evil)
  (add-hook 'after-init-hook 'evil-mode)
  (after-load 'evil
    (diminish 'undo-tree)))

(provide 'init-evil)
