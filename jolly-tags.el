
;; ------------------------- Imenu -------------------------
;; (require 'imenu-anywhere)

;; ------------------------- Cscope -------------------------

;; -------------------------GNU GLOBAL-------------------------
;; (autoload 'gtags-mode "gtags" "" t)
;; (global-set-key [(control c) (h)] 'gtags-display-browser)
;; (global-set-key [(control c) (\])] 'gtags-find-tag-from-here)
;; (global-set-key (kbd "\e*") 'gtags-pop-stack)
;; (global-set-key [(control c) (f)] 'gtags-parse-file)
;; (global-set-key [(control c) (g)] 'gtags-find-with-grep)
;; (global-set-key (kbd "C-c s") 'gtags-find-symbol)
;; (global-set-key (kbd "C-c c") 'gtags-find-rtag)
;; (global-set-key (kbd "\e.") 'gtags-find-tag)
;; (global-set-key (kbd "C-c v") 'gtags-visit-rootdir)


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

;; -------------------------sr speedbar-------------------------

(eval-after-load "sr-speedbar"
  (progn
    (global-set-key (kbd "s-s") 'sr-speedbar-toggle)
    ;; The `sr-speedbar' window width under WINDOW system.
    (setq sr-speedbar-width-x 26)
    ;; The `sr-speedbar' window width under CONSOLE.
    (setq sr-speedbar-width-console 26)
    ;; The max window width allowed remember.
    (setq sr-speedbar-max-width 55)
    ;; Whether delete other window before showing up.
    (setq sr-speedbar-delete-windows t)
    ;; Whether skip `sr-speedbar' window when use
    ;; command `other-window' select window in cyclic ordering of windows.
    (setq sr-speedbar-skip-other-window-p nil)
    ;; Control status of refresh speedbar content.
    (setq sr-speedbar-auto-refresh nil)
    ;; Puts the speedbar on the right side if non-nil (else left).
    (setq sr-speedbar-right-side nil)
    ))

(provide 'jolly-tags)
