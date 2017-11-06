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
    ("97a2b10275e3e5c67f46ddaac0ec7969aeb35068c03ec4157cf4887c401e74b1" "b8c5adfc0230bd8e8d73450c2cd4044ad7ba1d24458e37b6dec65607fc392980" "1de06eb8a32632d627616cce8f4b8aa851ee3f707f10f661e4854cb2be407a26" "759fd5856e85b6dca95615ffc0e214036d738639246a11dc224b7084d2a98117" "9e6ac467fa1e5eb09e2ac477f61c56b2e172815b4a6a43cf48def62f9d3e5bf9" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "e9c601d5ad29081e2e317cc1da13f0a399a9baadac21c8b6579cb16a9c08f929" default)))
 '(menu-bar-mode nil)
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
