(when (maybe-require-package 'flycheck)
  (after-load 'flycheck
    (global-flycheck-mode)))

(provide 'init-flycheck)
