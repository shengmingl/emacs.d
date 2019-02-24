(when (maybe-require-package 'go-mode)
  (after-load 'go-mode
    (add-hook 'go-mode-hook
	      (lambda()
		(add-hook 'before-save-hook 'gofmt-before-save)
		(local-set-key (kbd "M-.") 'godef-jump)
		(local-set-key (kbd "C-c C-r") 'go-remove-unused-imports))))
  (after-load 'evil
    (evil-define-key 'normal go-mode-map
      (kbd "C-]") 'godef-jump
      (kbd "C-o") 'pop-tag-mark))

  (when (maybe-require-package 'company-go)
    (after-load 'go-mode
      (add-hook 'go-mode-hook
		(lambda()
		  (add-to-list 'company-backends '(company-go))))))

  (maybe-require-package 'go-dlv)  

  (when (maybe-require-package 'go-guru)
    (after-load 'go-mode
      (add-hook 'go-mode-hook 'go-guru-hl-identifier-mode))))
			       

(provide 'init-go)
