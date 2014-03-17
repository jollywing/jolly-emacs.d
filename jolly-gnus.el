
;; gnus setup
(setq user-mail-address "wujiqing@apecn.com")
(setq user-full-name "Wu Jiqing")

;; pop setup
(setq mail-sources '((pop
                      :server "pop.apecn.com"
                      :port "pop3"
                      :user "wujiqing@apecn.com"
                      :password "jollywing")))

;; smtp
;; (load "smtpmail")
(setq smtpmail-default-smtp-server "smtp.apecn.com")
(setq smtpmail-smtp-server "smtp.apecn.com")
(setq message-send-mail-function 'smtpmail-send-it)

;; (setq smtpmail-local-domain nil)
;; (setq smtpmail-sendto-domain nil)
(setq smtpmail-debug-info t)
(setq smtpmail-auth-login-username "wujiqing@apecn.com")
(setq smtp-server "smtp.apecn.com")
(setq smtpmail-auth-credentials '(("smtp.apecn.com" 25 "wujiqing" "jollywing")))

;; nntp setup
(setq gnus-select-method '(nntp "news.yaako.com"))
(setq gnus-secondary-select-methods '((nnml "")))
(provide 'jolly-gnus)
