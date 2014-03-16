
(setq user-full-name "Jiqing Wu")
(setq user-mail-address "jiqingwu@gmail.com")

;; Latex
;; (load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)
(autoload 'cdlatex-mode "cdlatex" "CDLaTeX Mode" t)
(autoload 'turn-on-cdlatex "cdlatex" "CDLaTeX Mode" nil)
(add-hook 'LaTex-mode-hook 'turn-on-cdlatex)
(setq latex-run-command "xelatex")

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; open MSword document in emacs
(autoload 'no-word "no-word" "word to txt")
(add-to-list 'auto-mode-alist '("\\.doc\\'" . no-word))
(setq no-word-coding-systems '(("iso-8859-1" "8859-1.txt")
                               ("utf-8" "UTF-8.txt"))
      no-word-default-coding "utf-8")

;; draw pic with graphviz in emacs
(load-file "~/.emacs.d/site-lisp/graphviz-dot-mode.el")

;; write screenplay in emacs
;; (require 'screenwriter)
;; (setq auto-mode-alist (cons '("\\.scp" . screenwriter-mode)
;; 			    auto-mode-alist))


(provide 'jolly-doc)
