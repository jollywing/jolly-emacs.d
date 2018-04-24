
;;=================== RECOMMENDED PKGS =====================
;; auto-complete
;; yasnippet

;;----------------------------GENERAL------------------------------

(global-font-lock-mode t)       ;sytax on

(setq default-tab-width 4)
;; replace tabs with spaces
(setq-default indent-tabs-mode nil)

;; subword mode is supported since emacs 23.2
(if (>= emacs-major-version 24)
    (global-subword-mode))                  ; I like this

;; go to a line by giving its number,
;; which is bound to M-g in XEmacs
(global-set-key [(meta g)] 'goto-line)

;;-------------------- ff-find-other-file --------------------
(setq ff-always-in-other-window t)
(setq ff-always-try-to-create t)
(defun ff-other-file-key ()
  (local-set-key (kbd "C-c a") 'ff-find-other-file))
(add-hook 'c-mode-hook 'ff-other-file-key)
(add-hook 'c++-mode-hook 'ff-other-file-key)

;;---------------------------Make-------------------------

(global-set-key (kbd "C-`") 'next-error)
(global-set-key [(f9)] 'next-error)
(global-set-key [(f10)] 'compile)

;; use make instead of "make -k"
(setq compile-command "make")

(add-hook 'makefile-mode-hook (lambda() (setq indent-tabs-mode t)))

;;------------------------- COMPLETION -------------------------

(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-dabbrev
        try-expand-line
        try-expand-dabbrev-all-buffers
        ;; try-complete-lisp-symbol-partially
        ;; try-complete-lisp-symbol
        try-expand-list-all-buffers
        try-expand-line-all-buffers
        try-expand-dabbrev-from-kill
        try-expand-whole-kill
        )
      )

;; Completion
;; (defun my-indent-or-complete ()
;;    (interactive)
;;    (if (looking-at "//>")
;;           (hippie-expand nil)
;;           (indent-for-tab-command))
;; )

;; (global-set-key [(tab)] 'my-indent-or-complete)

;;-------------------------Yasnippet-------------------------
(if (require 'yasnippet "yasnippet" t)
    (progn
      (message "jolly said: yasnippet loaded.")
      (yas-global-mode 1)
      )
  (message "jolly said: yasnippet plugin not found."))

;;-------------------------Auto Complete--------------------
;; package-install auto-complete
;; If auto-complete-config not found, require return nil
;; (if (require 'auto-complete-config "auto-complete-config" t)
;;     (progn
;;       (message "jolly said: auto complete loaded.")
;;       (ac-config-default)
;;       (setq ac-delay 0.5)
;;       )
;;   (message "jolly said: auto complete plugin not found."))

;; (when (load "auto-complete" t)
;;   (progn
;;     (message "jolly said: auto complete loaded.")
;;     (require 'auto-complete-config)
;;     (ac-config-default)
;;     (setq ac-delay 0.5)))

;;-------------------------Company--------------------
;; package-install company
;; (add-hook 'after-init-hook 'global-company-mode)
(if (require 'company "company" t)
    (progn
      (message "jolly said: company-mode loaded.")
      (setq company-backends '(company-bbdb
                               company-nxml
                               company-css
                               company-capf
                               company-elisp
                               company-files
                               (company-dabbrev-code company-keywords)
                               company-dabbrev))
      (add-hook 'python-mode-hook 'company-mode)
      )
  (message "jolly said: company plugin not found."))


;;-------------------------scheme--------------------
;; (require 'cmuscheme)
(setq scheme-program-name "guile")

(provide 'jolly-programming)
