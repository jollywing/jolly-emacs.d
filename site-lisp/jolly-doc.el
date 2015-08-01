
(setq user-full-name "Jiqing Wu")
(setq user-mail-address "jiqingwu@gmail.com")

;; Latex
;; (load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)

;; package-install cdlatex
;; (autoload 'cdlatex-mode "cdlatex" "CDLaTeX Mode" t)
;; (autoload 'turn-on-cdlatex "cdlatex" "CDLaTeX Mode" nil)
(add-hook 'LaTex-mode-hook '(lambda() (turn-on-cdlatex) (imenu-add-menubar-index)))
(setq latex-run-command "xelatex")

;; package-install markdown-mode
;; (autoload 'markdown-mode "markdown-mode"
;;   "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-hook 'markdown-mode-hook 'imenu-add-menubar-index)

;; open MSword document in emacs
;; no-word.el is provided in ~/.emacs.d/site-lisp
;; anti-word binary is needed.
(autoload 'no-word "no-word" "word to txt")
(add-to-list 'auto-mode-alist '("\\.doc\\'" . no-word))
(setq no-word-coding-systems '(("iso-8859-1" "8859-1.txt")
                               ("utf-8" "UTF-8.txt"))
      no-word-default-coding "utf-8")

;; package-install graphviz-dot-mode
;; draw pic with graphviz in emacs
;; since it is installed with elpa, it needn't config anymore.
;; (load-file "~/.emacs.d/site-lisp/graphviz-dot-mode.el")

;; write screenplay in emacs
;; provided in .emacs.d/site-lisp
;; (require 'screenwriter)
;; (setq auto-mode-alist (cons '("\\.scp" . screenwriter-mode)
;; 			    auto-mode-alist))

;; enable 'ps-ccrpt' if it is installed.
(require 'ps-ccrypt "ps-ccrypt" t)

(provide 'jolly-doc)
