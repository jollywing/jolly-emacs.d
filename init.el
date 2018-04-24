;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; jiqing's .emacs for Emacs
;; Email: jiqingwu@gmail.com
;; create on 2008-03-25
;; update on 2014-03-12 Wed
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; (defconst my-emacs-path "~/.emacs.d" "my emacs config file path")
;; (defconst my-emacs-lisps-path (concat my-emacs-path "/site-lisp") "downloaded elisp path")

;; (defconst is-after-emacs-23  (<= 23 emacs-major-version) "judge version")
;; (defvar mswin (equal window-system 'w32) "Non-nil means windows system.")
;; ;;note: mac port version use window-system == mac
;; (defvar macosx (equal window-system 'ns) "Non-nil means Mac OSX.")


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq load-path (cons "~/.emacs.d/site-lisp" load-path))

(require 'jolly-elpa)

(require 'jolly-ui)
(require 'jolly-basic)
(require 'jolly-util)
(require 'jolly-dired)

(require 'jolly-org)
(require 'jolly-doc)

(require 'jolly-programming)
(require 'jolly-tags)
(require 'jolly-cc)
(require 'jolly-java)
(require 'jolly-webdev)
;; (require 'jolly-cedet)

;; (require 'jolly-emms)
(require 'jolly-blog)
(require 'jolly-w3m)
;; (require 'jolly-gnus)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-safe-themes
   (quote
    ("759fd5856e85b6dca95615ffc0e214036d738639246a11dc224b7084d2a98117" "1ba61848d0d8c78e037867c26f118875705c20f5ad64949a8cee8c8059e5c50f" "a1e99cb36d6235abbe426a0a96fc26c006306f6b9d2a64c2435363350a987b4c" "9e6ac467fa1e5eb09e2ac477f61c56b2e172815b4a6a43cf48def62f9d3e5bf9" "e9c601d5ad29081e2e317cc1da13f0a399a9baadac21c8b6579cb16a9c08f929" default)))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (ensime scala-mode buffer-move graphviz-dot-mode groovy-mode gradle-mode web-mode markdown-mode)))
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
