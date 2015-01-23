
;;
(defun ac-java-mode-setup ()
  (if (require 'auto-complete "auto-complete" t)
      (progn
        (semantic-mode)
        (setq ac-sources (append '(ac-source-semantic ac-source-yasnippet) ac-sources)))
    ))

(add-hook 'java-mode-hook 'ac-java-mode-setup)

;; ==================== use eclipse eclim ===============
;; need s.el, package-install s
;; package-install emacs-eclim
;; download eclime.jar

;; (if (require 'eclimd "eclimd" t)
;;     (message "jolly said: eclimd found")
;;   (message "jolly said: eclimd not found"))

;; (if (require 'eclim "eclim" t)
;;     (progn
;;       (setq eclim-executable "e:\\installed\\eclipse\\eclim.bat")
;;       (global-eclim-mode)
;;       (require 'ac-emacs-eclim-source)
;;       (ac-emacs-eclim-config)
;;       (setq eclimd-wait-for-process nil)
;;     )
;;   (message "jolly said: eclim not found"))

;;---------------- JDE-Mode -----------------------

;; (require 'jolly-cedet)

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

(provide 'jolly-java)
