
;; (require 'cl)

(require 'package)

;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ("marmalade" . "http://marmalade-repo.org/packages/")
;;                          ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(setq package-enable-at-startup nil)
;; Even if the value is nil, you can type M-x package-initialize to
;; activate the package system at any time.
;; Activate: (1) add pkg-dir to load-path; (2) load pkg-autoloads.el
(package-initialize)

;; due to the startup latency and the problems about the version of elisp
;; package, forbidden the automatic installation.
;; please setup the packages manually
;;------------------------------------------------------------
;; doc-utils: (1) cdlatex; (2) markdown-mode (3) graphviz-dot-mode
;; programming: (1) js2-mode; (2) web-mode; (3) auto-complete or company
;;              (4) ecb; (5) lua-mode
;; other-utils: (1) google-translate
;;------------------------------------------------------------

;; auto installed package (when (not package-archive-contents)
;; (package-refresh-contents))
 
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

;; dolist is defined in cl.el
;; (dolist (p my-default-packages)
;;   (when (not (package-installed-p p))
;;     (package-install p)))


(provide 'jolly-elpa)
