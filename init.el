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

(setq load-path (cons "~/.emacs.d" load-path))
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
(require 'jolly-webdev)
;; (require 'jolly-cedet)

;; (require 'jolly-emms)
;; (require 'jolly-w3m)
;; (require 'jolly-gnus)


