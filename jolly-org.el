
(setq org-log-done 'time)
(setq org-agenda-files (list "~/blog/org/todo.org"
                             "~/blog/org/someday.org"))

;; M-x org-publish
(setq org-publish-project-alist
      '(("note-org"
         :base-directory "~/blog/tech-notes/org/"
         :publishing-directory "~/blog/tech-notes/publish/"
         :base-extension "org"
         :recursive t
         :publishing-function org-publish-org-to-html
         :auto-index t
         :index-filename "index.org"
         :index-title "index"
         :link-home "index.html"
         :section-numbers t
         :style "<link rel=\"stylesheet\" href=\"theme.css\" type=\"text/css\"/>")
        ("note-static"
         :base-directory "~/blog/tech-notes/org/"
         :publishing-directory "~/blog/tech-notes/publish/"
         :recursive t
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|html\\|swf\\|zip\\|gz\\|txt\\|el"
         :publishing-function org-publish-attachment)
        ("note" 
         :components ("note-org" "note-static")
         :author "jiqingwu@gmail.com"
         )))

;; In some terminals, M-RET will be interpreted as M-j, so we can not
;; insert a org heading with M-RET, so I bind M-] to insert heading.
;; (define-key org-mode-map (kbd "M-]") 'org-insert-heading)

(add-hook 'org-mode-hook 'imenu-add-menubar-index)

(provide 'jolly-org)
