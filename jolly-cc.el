
(setq default-tab-width 4)
;; replace tabs with spaces
(setq-default indent-tabs-mode nil)


;;---------------- CC-Mode -----------------------

(require 'cc-mode)

(setq c-basic-offset 4)
(setq c-offsets-alist '((arglist-cont-nonempty . ++)
                        (inline-open . 0)
                        (substatement-open 0)))


(add-hook 'c++-mode-hook '(lambda()
                          (c-set-style "stroustrup")))

(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (c-set-style "K&R")
  (setq tab-width 8)
  (setq indent-tabs-mode t)
  (setq c-basic-offset 8))

;; (require 'google-c-style)
;; (add-hook 'c-mode-common-hook 'google-set-c-style)

(provide 'jolly-cc)
