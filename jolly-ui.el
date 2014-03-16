
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Look and Feels
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(create-fontset-from-fontset-spec
;  "-*-clean-*-*-*-*-*-*-*-*-*-*-fontset-global,
;  chinese-gb2312:-*-simhei-*-*-*-*-17-*-*-*-*-*-gb2312.1980-*")
;(set-default-font "fontset-global")
;; let new frame use fontset-global
;(setq default-frame-alist
;	  (append '((font . "fontset-global")) default-frame-alist))
;

;(set-default-font "Bitstream Vera Sans Mono-14")
;(set-frame-font "courier 10 pitch-12")

(if (equal window-system nil)
    ()
  (progn
    ;; (setq default-frame-alist
    ;;       (append
    ;;        '((font . "consolas-14")
    ;;          (background-color . "gray20")
    ;;          (foreground-color . "LightGoldenrod")
    ;;          (cursor-color . "WhiteSmoke"))
    ;;        default-frame-alist))

    (setq default-frame-alist
          (append
           '((font . "consolas-16")
             (background-color . "#99bb99")
             (foreground-color . "black")
             (cursor-color . "dark red")
             )
           default-frame-alist))

    (set-face-attribute 'mode-line nil
                        :foreground "WhiteSmoke" :background "DarkGoldenrod"
                        :family "Arial" :box '(:line-width 2 :color "Goldenrod"))

    ;; (set-face-foreground 'web-mode-html-tag-face "blue")
    ;; (set-face-foreground 'web-mode-html-attr-name-face "darkgreen")

    ;; set Chinese font
    (set-fontset-font "fontset-default" 'unicode
                      '("microsoft yahei" . "unicode-bmp"))
    ;; (set-fontset-font "fontset-default" 'unicode
    ;;                   '("lihei pro" . "unicode-bmp"))
    ))


;; Since emacs 24, emacs include theme system.
;; (load-theme 'tango t)
(if is-after-emacs-23
(load-theme 'wombat t))

;; no cursor blink
(blink-cursor-mode -1)

;; if under terminal, remove menu
;; (if (equal window-system nil) (menu-bar-mode -1))
;; "nil" doesn't take effect, since Emacs 24
(menu-bar-mode -1)

;; no tool bar
(tool-bar-mode -1)

;; tooltip ...
(tooltip-mode -1)

;; no scrollbar
(scroll-bar-mode -1)

;; show line number and column number in state bar
(setq line-number-mode t)
(setq column-number-mode t)

;; if the value is 't', open the '*scratch*' buffer.
;; if the value is string, visit the specified file or directory.
;; (setq initial-buffer-choice t)

(setq inhibit-startup-message t)


;; show date in state bar
;; (display-time-mode 1)
;; (setq display-time-24hr-format t)
;; (setq display-time-day-and-date t)

(display-battery-mode 1)

;; show the absolute path in frame title
;;(setq frame-title-format "emacs@%f")
;; show the buffer name in frame title
;;(setq frame-title-format "emacs:: %b")

;; 定义窗口标题
(defun frame-title-string()
  "Return the file name of buffer name,
using ~ instead of $HOME"
  (let ( (fname (or (buffer-file-name (current-buffer))
                    (buffer-name)))
         (max-len 90) )
    (when (string-match (getenv "HOME") fname)
      (setq fname (replace-match "~" t t fname)))
    (if (> (length fname) max-len)
        (setq fname (concat "..."
                            (substring fname
                                       (- (length fname) max-len)))))
    fname))

(setq frame-title-format '("Emacs@"(:eval(frame-title-string))))

;; 增大行距
(setq-default line-spacing 3)



;; 通过 customize-face 定制的外观
;; (setq custom-file "~/blog/emacs-lisp/emacs-custom.el")
;; (load custom-file)

;; customize theme with color-theme package
;; (setq load-path (cons "~/.emacs.d/color-theme" load-path))

;; (defun set-theme-darkslate ()
;;   " set color theme to ~/blog/emacs-lisp/color-theme/themes/color-theme-darkslate.el"
;;   (interactive)
;;   (load-file "~/blog/emacs-lisp/color-theme/themes/color-theme-darkslate.el")
;;   (my-color-theme))
;; 
;; (defun set-theme-black ()
;;   " set color theme to ~/blog/emacs-lisp/color-theme/themes/color-theme-black.el"
;;   (interactive)
;;   (load-file "~/blog/emacs-lisp/color-theme/themes/color-theme-black.el")
;;   (my-color-theme))
;; 
;; (defun set-theme-desert ()
;;   " set color theme to ~/blog/emacs-lisp/color-theme/themes/color-theme-desert.el"
;;   (interactive)
;;   (load-file "~/blog/emacs-lisp/color-theme/themes/color-theme-desert.el")
;;   (my-color-theme))
;; 
;; (defun set-theme-bluesea ()
;;   " set color theme to ~/blog/emacs-lisp/color-theme/themes/color-theme-bluesea.el"
;;   (interactive)
;;   (load-file "~/blog/emacs-lisp/color-theme/themes/color-theme-bluesea.el")
;;   (my-color-theme))
;;   
;; (defun set-theme-lightgray ()
;;   " set color theme to ~/blog/emacs-lisp/color-theme/themes/color-theme-gray.el"
;;   (interactive)
;;   (load-file "~/blog/emacs-lisp/color-theme/themes/color-theme-gray.el")
;;   (my-color-theme))
;; 
;; (defun set-theme-lightgreen ()
;;   " set color theme to ~/blog/emacs-lisp/color-theme/themes/color-theme-black.el"
;;   (interactive)
;;   (load-file "~/blog/emacs-lisp/color-theme/themes/color-theme-forest.el")
;;   (my-color-theme))


(provide 'jolly-ui)
