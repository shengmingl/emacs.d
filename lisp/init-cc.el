(when (maybe-require-package 'cmake-mode)
  (add-hook 'after-init-hook 'cmake-mode))

(when (maybe-require-package 'irony)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  (when (maybe-require-package 'company-irony)
    (when (maybe-require-package 'company-irony-c-headers)
      (after-load 'company
	(add-to-list 'company-backends
		     '(company-irony-c-headers company-irony company-gtags company-keywords))))))



(provide 'init-cc)
