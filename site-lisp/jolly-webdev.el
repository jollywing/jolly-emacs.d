
;;========================================
;; pkgs recommed:
;; - web-mode (main)
;; - js3-mode (main)
;; - php-mode (main)
;; - zencoding (minor)
;; - rainbow-mode (minor)
;;========================================

;;------------------------- CSS -------------------------
(add-hook 'css-mode-hook 'rainbow-mode)

;;------------------------- JAVASCRIPT --------------------
;; since emacs 23.2, import js-mode for editing javascript.
;; js2-mode and js3-mode is a enhanced javascript mode.
;; We use js3-mode
;; (autoload 'js3-mode "js3-mode" nil t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))
;; package-install js3-mode
(add-hook 'js3-mode-hook 'js3-mode-hide-warnings-and-errors)
(add-hook 'js3-mode-hook 'rainbow-mode)

;;------------------------- PHP -------------------------
;; (autoload 'php-mode "php-mode.el" "Php mode." t)
;; (setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode))
;;                               auto-mode-alist))

;;------------------------ WEB MODE --------------------
;; package-install web-mode

(autoload 'web-mode "web-mode.el" "WEB DEV MODE." t)
(add-to-list 'auto-mode-alist '("\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; (add-hook 'web-mode-hook 'zencoding-mode)
;; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.tpl$" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(provide 'jolly-webdev)
