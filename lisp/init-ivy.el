(when (maybe-require-package 'ivy)
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t))

(provide 'init-ivy)
