
;;----------------------------GENERAL------------------------------


(global-font-lock-mode t)       ;sytax on

;; subword mode is supported since emacs 23.2
(if (>= emacs-major-version 24)
    (global-subword-mode))                  ; I like this

;; go to a line by giving its number,
;; which is bound to M-g in XEmacs
(global-set-key [(meta g)] 'goto-line)

(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(
        ;; try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-expand-list-all-buffers
        try-expand-line-all-buffers
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

;;------------------------ SPEEDBAR ------------------------
(setq speedbar-sort-tags t)
(setq speedbar-use-images nil)
(setq speedbar-update-flag t)
(setq dframe-update-speed 2)
(setq speedbar-frame-parameters
      '((minibuffer) (width . 25) (border-width . 0)
        (menu-bar-lines. 0) (tool-bar-lines . 0) (unsplittable . t)
        (left-fringe . 0)))
(global-set-key (kbd "C-x t") 'speedbar-get-focus)

;;-------------------- ff-find-other-file --------------------
(setq ff-always-in-other-window t)
(setq ff-always-try-to-create t)
(defun ff-other-file-key ()
  (local-set-key (kbd "C-c a") 'ff-find-other-file))
(add-hook 'c-mode-hook 'ff-other-file-key)
(add-hook 'c++-mode-hook 'ff-other-file-key)

(defun prelude-makefile-mode-defaults ()
  (setq indent-tabs-mode t))

;;---------------------------Make-------------------------

(global-set-key (kbd "C-`") 'next-error)
(global-set-key [(f9)] 'next-error)
(global-set-key [(f10)] 'compile)

;; use make instead of "make -k"
(setq compile-command "make")

(add-hook 'makefile-mode-hook (lambda() (setq indent-tabs-mode t)))

;;-------------------------Yasnippet-------------------------
;; (add-to-list 'load-path "~/.emacs.d/yasnippet-0.7.0")
;; (require 'yasnippet)
;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/yasnippet-0.7.0/snippets")

;;-------------------------Auto Complete--------------------
;; (add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-1.3.1")
;; (eval-after-load "auto-complete"
;;   (progn
;;     (require 'auto-complete-config)
;;     (add-to-list 'ac-dictionary-directories
;; 		 "~/.emacs.d/elpa/auto-complete-20140314.802/dict")
;;     (ac-config-default)
;;     (setq ac-delay 0.5)
;;     ))

;;-------------------------Company--------------------
;; (add-hook 'after-init-hook 'global-company-mode)


;;-------------------------scheme--------------------
;; (require 'cmuscheme)
(setq scheme-program-name "guile")

(provide 'jolly-programming)
