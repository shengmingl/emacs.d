(when (maybe-require-package 'yasnippet)
  (after-load 'yasnippet
    (diminish 'yasnippet)
    (add-hook 'after-init-hook 'yas-global-mode)))

(provide 'init-yasnippet)
