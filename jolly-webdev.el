
;;------------------------- JAVASCRIPT --------------------
;; Emacs has a built-in js mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;;------------------------- PHP -------------------------
;; (autoload 'php-mode "php-mode.el" "Php mode." t)
;; (setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode))
;;                               auto-mode-alist))

;;------------------------ WEB MODE --------------------


(require 'web-mode)
(autoload 'web-mode "web-mode.el" "" t)
;; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(provide 'jolly-webdev)
