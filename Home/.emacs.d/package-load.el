;; load smartcompile

(require 'smart-compile)

;; load neotree

(add-to-list 'load-path "/directory/containing/neotree/")
(require 'neotree)

;; load yasnippet

(add-to-list 'load-path
	     "~/path-to-yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(setq yas-snippet-dirs "~/.emacs.d/snippets")

;; load flycheck

(add-hook 'after-init-hook #'global-flycheck-mode)
(with-eval-after-load 'flycheck
  (require 'flycheck-clang-analyzer)
  (flycheck-clang-analyzer-setup))