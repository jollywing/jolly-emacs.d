;;;;;;;;;;;;;;;;;;;;;;;;;; dired ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(put 'dired-find-alternate-file 'disabled nil)
(setq dired-recursive-deletes 'top)
(setq dired-recursive-copies 'always)
(require 'dired-x)
;; press C-x C-j jump into dired of your current dir
(global-set-key [(control x) (control j)] 'dired-jump)
(define-key global-map (kbd "C-x 4 C-j") 'dired-jump-other-window)
;; omit the files starting with "." and "#" (emacs backup file)
(add-hook 'dired-mode-hook
          (lambda ()
            (setq dired-omit-files "^#\\|^\\..*")
            (dired-omit-mode 1)))

(setq dired-guess-shell-alist-user
      (list
       (list "\\.chm$" "chmsee * &")
       (list "\\.pdf$" "evince * &")
       (list "\\.mkv$" "mplayer * >/dev/null 2>&1 &")
       (list "\\.avi$" "mplayer * >/dev/null 2>&1 &")
       (list "\\.rmvb$" "mplayer * >/dev/null 2>&1 &")
       (list "\\.rm$" "mplayer * >/dev/null 2>&1 &")
       (list "\\.mp3$" "playsound * &")
       ))

(setq-default dired-listing-switches "-alhF")

(provide 'jolly-dired)
