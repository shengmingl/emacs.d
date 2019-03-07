;;(when (maybe-require-package 'cmake-mode)
;; (add-hook 'after-init-hook 'cmake-mode))

(maybe-require-package 'clang-format)

(when (maybe-require-package 'ggtags)
  (add-hook 'c-mode-common-hook
	    (lambda ()
	      (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
		(ggtags-mode 1))))
  (after-load 'evil
    (after-load 'ggtags
      (evil-define-key 'normal global (kbd "C-]") 'ggtags-find-tag-dwim)
      (evil-define-key 'normal global (kbd "M-]") 'ggtags-find-other-symbol))))

;; (when (maybe-require-package 'counsel-gtags)
;;   (add-hook 'c-mode-hook 'counsel-gtags-mode)
;;   (add-hook 'c++-mode-hook 'counsel-gtags-mode)
;;
;;   (with-eval-after-load 'counsel-gtags
;;     (define-key counsel-gtags-mode-map (kbd "M-t") 'counsel-gtags-find-definition)
;;     (define-key counsel-gtags-mode-map (kbd "M-r") 'counsel-gtags-find-reference)
;;     (define-key counsel-gtags-mode-map (kbd "M-s") 'counsel-gtags-find-symbol)
;;       (define-key counsel-gtags-mode-map (kbd "M-,") 'counsel-gtags-go-backward))))
  

;;when (maybe-require-package 'irony)
;;(add-hook 'c-mode-hook 'irony-mode)
;;(add-hook 'c++-mode-hook 'irony-mode)
;;(add-hook 'objc-mode-hook 'irony-mode)
;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;;(when (maybe-require-package 'company-irony)
;;  (when (maybe-require-package 'company-irony-c-headers)
;;    (after-load 'company
;;      (add-to-list 'company-backends
;;		    '(company-irony-c-headers company-irony company-keywords)))))
;;(when (maybe-require-package 'flycheck-irony)
;;  (after-load 'flycheck
;;    (add-hook 'flycheck-mode-hook 'flycheck-irony-setup)))
;;(when (maybe-require-package 'irony-eldoc)
;;  (add-hook 'irony-mode-hook 'irony-eldoc)))
;;    



(provide 'init-cc)
