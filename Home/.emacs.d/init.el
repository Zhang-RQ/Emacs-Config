;; load packages

(load-file "~/.emacs.d/package-load.el")

;; load key-cut

(load-file "~/.emacs.d/set-key.el")

;; set c++ syntax

(load-file "~/.emacs.d/c++-syntax.el")

;; set fonts
(set-face-attribute
 'default nil :font "Consolas 12")

(dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "微软雅黑" :size 12)))

;; set ido mode

(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
(setq ido-everywhere t)          
(ido-mode 1)

;; disable auto-save and auto-backup

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq auto-save-mode nil)

;; misc

(setq-default cursor-type 'bar)
(global-linum-mode t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; load theme

(load-theme 'monokai t)

;; set default directory

(setq command-line-default-directory "D:/WorkEnv/")

;; set flycheck mode

(setq flycheck-check-syntax-automatically '(mode-enabled save))

;; enable company and hs

(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)

;; set clang compile options

(custom-set-variables
	'(flycheck-clang-args
		(quote
			("--target=x86_64-w64-windows-gnu"))))

(custom-set-variables
 '(company-clang-arguments
   (quote
    ("--target=x86_64-w64-windows-gnu")))
 '(company-clang-insert-arguments nil))