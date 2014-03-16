
;;---------------- JDE-Mode -----------------------

(require 'jolly-cedet)

;; Set the debug option to enable a backtrace when a
;; problem occurs.
;; (setq debug-on-error t)

;; Update the Emacs load-path to include the path to
;; the JDE and its require packages. 
;; (add-to-list 'load-path (expand-file-name
;;                          "~/.emacs.d/jdee-2.4.0.1/lisp/"))
;; (add-to-list 'load-path (expand-file-name
;; 			 "~/.emacs.d/elib-1.0/"))

;; If you want Emacs to defer loading the JDE until you open a
;; Java file, edit the following line
;; Don't load jde when emacs startup
;; (setq defer-loading-jde t)

;; (setq jde-check-version-flag nil)

;; Auto load jde when you edit java file
;; (if defer-loading-jde
;;     (progn
;;       (autoload 'jde-mode "jde" "JDE mode." t)
;;       (setq auto-mode-alist
;;             (append
;;              '(("\\.java\\'" . jde-mode))
;;              auto-mode-alist)))
;;   (require 'jde))

