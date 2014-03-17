
(require 'cl)

(require 'package)

;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ("marmalade" . "http://marmalade-repo.org/packages/")
;;                          ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

;; auto installed package
;; (when (not package-archive-contents)
;;   (package-refresh-contents))
 
;; setting default package to be installed
;; (defvar my-default-packages '(
;;                               auto-complete
;;                               gtags
;;                               google-translate
;;                               graphviz-dot-mode
;;                               markdown-mode
;; 			      sr-speedbar
;;                               web-mode
;;                               ))

;; (if (>= emacs-major-version 24)
;;     (add-to-list 'my-default-packages 'js2-mode))

;; (dolist (p my-default-packages)
;;   (when (not (package-installed-p p))
;;     (package-install p)))

(setq package-enable-at-startup nil)
;; Even if the value is nil, you can type M-x package-initialize to
;; activate the package system at any time.
(package-initialize)

(provide 'jolly-elpa)
