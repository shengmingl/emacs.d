;;; init-python.el --- Python editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq gud-pdb-command-name "python -m pdb")

(when (maybe-require-package 'elpy)
  (after-load 'python
    (diminish 'elpy)
    (elpy-enable)))
    
(when (maybe-require-package 'anaconda-mode)
  (diminish 'anaconda-mode)
  (after-load 'python
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'anaconda-eldoc-mode)))

(when (maybe-require-package 'company-anaconda)
    (after-load 'company
      (after-load 'python
	(push 'company-anaconda company-backends))))

(provide 'init-python)

