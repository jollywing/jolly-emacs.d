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
    ("324fb69587738dd69880edd1fdc4af92bac19059c412274f5a1f34280a3974a6" "a513a8fdd9b5955750f7988f5d77bc6f1c16286ca48c76e1975e0891ec2a28d7" "97a2b10275e3e5c67f46ddaac0ec7969aeb35068c03ec4157cf4887c401e74b1" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "456af71f569329e2f8857ede2d1966b7a466ffff32824e462c35d162b0a731f2" "1d2a39e7dd8f8f31261cf06c7deffb04de3d6f4549432f5cc8766d369ae5f470" "85b483c836eef7153722305be196f417286f4f1cef14818c3a0563e67b86e6cb" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
