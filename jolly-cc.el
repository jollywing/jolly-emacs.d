
;;---------------- CC-Mode -----------------------

(require 'cc-mode)

(setq c-basic-offset 4)
(setq c-offsets-alist '((arglist-cont-nonempty . ++)
                        (inline-open . 0)
                        (substatement-open . 0)
                        (statement-cont . ++)))

;; M-x c-set-style, OR press [C-c . RET] to set indent style
;; c-styles: gnu, k&r, bsd, whitesmith, linux,
;; - gnu: indent 2 spaces, open substatements with indent
;; - bsd, linux: indent 8 spaces, open substatements without indent
;; - k&r: indent 5 spaces, open substatements without indent
;; - whitesmith: indent 4 spaces, open substatements with indent

;; c++-styles: stroustrup, ellemtel
;; java-style: java (When you enter java-mode, this style will be installed)
;; awk-style: awk (When you enter awk-mode, this style will be installed)
;; user-style: user (customized by you)
(setq c-default-style
      '((c-mode . "user")
        (c++-mode . "ellemtel")
        (java-mode . "java")
        (awk-mode . "awk")
        (other . "gnu")))


;; (require 'google-c-style)
;; (add-hook 'c-mode-common-hook 'google-set-c-style)

(setq which-function-modes '(cc-mode))
(which-function-mode)

(provide 'jolly-cc)
