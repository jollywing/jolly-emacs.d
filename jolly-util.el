

(require 'sdcv-mode)
(global-set-key (kbd "C-c d") 'sdcv-search)

(global-set-key (kbd "C-c y") 'insert-date)
(defun insert-date (&optional arg)
  "Insert date in English format or Chinese format.
If you give argument 5,
the current time will be inserted in the format of HH:MM."
  (interactive "p")
  (cond
   ((= arg 0) (insert (format-time-string "%Y%m%d")))
   ((= arg 2) (insert (format-time-string "%Y/%m/%d")))
   ((= arg 3) (insert (format-time-string "%Y.%m.%d")))
   ((= arg 4) (insert (format-time-string "%Y年%m月%d日")))
   ((= arg 5) (insert (format-time-string "%H:%M")))
   (t (insert (format-time-string "%Y-%m-%d %a"))))
  (message "arg = %d" arg)
  )

(defun delete-blank-lines-region (beg end) 
  "Execute `delete-blank-lines' in region." 
  (interactive "*r") 
  (save-excursion 
    (goto-char beg) 
    (let ((blank-line "^\\s-*$") 
          (nonblank-line "^.*\\S-.*$") 
          blank-beg blank-end) 
      (while (and (< (point) end) (setq blank-beg (search-forward-regexp blank-line end t))) 
        (save-excursion 
          (setq blank-end (search-forward-regexp nonblank-line end t))) 
        (if blank-end 
            (setq end (- end (- blank-end blank-beg))) 
          (setq end 0)) 
        (previous-line) 
        (delete-blank-lines))))) 

(defun smart-delete-blank-lines (&optional no-region) 
  "Smart `delete-blank-lines'. 

If NO-REGION is non-nil, always execute `delete-blank-lines', 
otherwise, if `mark-active', execute `delete-blank-lines-region', 
and execute `delete-blank-lines' if there no mark." 
  (interactive "P") 
  (if (or no-region (not mark-active)) 
      (delete-blank-lines) 
    (call-interactively 'delete-blank-lines-region))) 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Covert chinese from simplified to traditional
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun convert-chinese ()
  " convert the selected region from Simplified Chinese to Traditional Chinese, or otherwise.
need ICONV shell utility!
can not handle string contains \\n, \), \;"
  (interactive)
  (let ((str-to-handle) (str-shell-cmd) (str-result)
        (from (region-beginning)) (to (region-end)))
    (if (region-active-p)
        (progn
          (setq str-to-handle (buffer-substring from to))
          (setq str-shell-cmd (concat "echo " str-to-handle
                                      "| iconv -f utf8 -t gb2312"
                                      "| iconv -f gb2312 -t big5"
                                      "| iconv -f big5 -t utf8"))
          (setq str-result (shell-command-to-string str-shell-cmd))
          (setq str-result (substring str-result 0 -1))
          (save-excursion
            (delete-region from to)
            (goto-char from)
            (insert str-result))
          )
      )
    )
  )


(provide 'jolly-util)
