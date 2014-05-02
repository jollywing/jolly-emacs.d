
;; under windows, you may want to change EmacsHome.
;; edit `EmacsRoot/site-lisp/site-start.el'
;; add follow lines:

;; (defvar emacs-root-dir (substring data-directory 0 -4))
;; (setenv "HOME" emacs-root-dir)
;; (defvar MINGW-PATH "your/mingw/bin/path;your/msys/bin/path"
;; "MinGW path to provide GCC and shell utilities")
;; (defvar GIT-PATH "your/msysgit/bin/path"
;; "Git path to provide GIT, antiword, also BASH")
;; (defvar EXTEND-PATH "" "The path to Other utilities you like")
;; (setenv "PATH" (concat MINGW-PATH GIT-PATH EXTEND-PATH (getenv "PATH")))
;; (setq default-directory "PATH/TO/START")
;; (setq shell-file-name "bash.exe")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Encodings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; before emacs 22 for gbk. it is not neccessary now.
;; (require 'mule-gbk)

;; check whether is chinese when open file
;; For cp936, gb2312
(set-language-environment 'Chinese-GB)
;; encoding method of write file
(set-buffer-file-coding-system 'utf-8)
;; encoding method of new file
(setq default-buffer-file-coding-system 'utf-8)
;; According to your locale of ctype
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; encoding method of reading and writing file name
;; 'utf-8 is good selection under linux
(if (equal window-system 'w32)
    (progn
      (setq file-name-coding-system 'gbk)
      (setq-default pathname-coding-system 'gbk)
      (set-clipboard-coding-system 'gbk)
      (set-selection-coding-system 'gbk)
      )
  (progn
    (setq file-name-coding-system 'utf-8)
    (setq-default pathname-coding-system 'utf-8)
    (set-clipboard-coding-system 'utf-8)
    (set-selection-coding-system 'utf-8)
    ))

(prefer-coding-system 'utf-8)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mark
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; when press non-motion key, the mark is disactivated. t by default.
;; It is nil default before emacs 23.
;; if transient-mark-mode is off, the region won't be highlighted.
(setq transient-mark-mode 1)

;; Non-nil means highlight region even in nonselected windows.
(setq highlight-nonselected-windows nil)

;; (require 'tabbar)
;; (tabbar-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MiniBuffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; It's `grow-only' by default.
(setq resize-mini-windows t)

;; history length of minibuffer history list, 30 by default
;;(setq history-length 50)

;; nil by default
(setq history-delete-duplicates t)

;; whether the incremental search is recorded in command list, nil by default
;;(setq isearch-resume-in-command-history t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Display Controlling
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; when you scroll screen with C-v and M-v, preserve the position
;; of point.
;; (setq scroll-preserve-screen-position t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Editing Behaviors
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; by default is nil on Linux
;; by default is t on Windows
;;(setq read-file-name-completion-ignore-case t)
;;(setq read-buffer-completion-ignore-case t)

(setq show-trailing-whitespace t)

;; when all characters in a line are removed,
;; this line is also deleted
(setq-default kill-whole-line t)

;; Non-nil means don't signal an error for killing read-only text
(setq kill-read-only-ok t)

;; Do not add a new string to `kill-ring' when it is the same as the last one
(setq kill-do-not-save-duplicates t)

(setq default-fill-column 75)
;; (auto-fill-mode t)

(setq default-major-mode 'text-mode)
;; (add-hook 'text-mode-hook 'turn-on-auto-fill)
;; (add-hook 'text-mode-hook 'hl-line-mode)

(setq x-select-enable-clipboard t)

(setq mouse-yank-at-point t)

;; function set
(fset 'yes-or-no-p 'y-or-n-p)

(setq sentence-end-double-space nil)

;; inhibit autosave
(setq auto-save-default nil)

;; inhibit backup
(setq-default make-backup-files nil)
(setq delete-auto-save-files t)

;;(icomplete-mode 1)

;; (iswitchb-mode 1)
(ido-mode t)

;; when you already are located at the last line, you
;; ask Emacs to go to the next line, where a newline is
;; inserted (or not, where bell rings)
;;(setq next-line-add-newlines t)
(setq next-line-add-newlines nil)

;; If non-nil, whenever the cursor is at the end of the line,
;; stick to the end of the line when moving the cursor up or down;
;; otherwise, stay in the column where the cursor is.
(setq track-eol nil)

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(setq visible-bell t)

;;(mouse-avoidance-mode 'animate)
(mouse-avoidance-mode 'jump)
;; turn on mouse in console mode
(xterm-mouse-mode t)


;; recently opened files
(require 'recentf)
(setq recentf-max-saved-items 25)
(recentf-mode 1)
;; add at the front of list, don't conncect to remote hosts
(add-to-list 'recentf-keep 'file-remote-p)

(global-set-key [(f2)] 'kill-this-buffer)
(global-set-key [(f5)] 'shell)
(global-set-key [(f6)] 'recentf-open-files)
(global-set-key [(f7)] 'shell-command)
(global-set-key [(f8)] 'other-window)

;; (defun switch-to-scratch () (interactive) (switch-to-buffer "*scratch*"))
;; (global-set-key [(f11)] 'switch-to-scratch)

;; show matched bracket
(show-paren-mode 1)
(setq show-parent-style 'parenthesis)
;;(setq show-paren-style 'mixed)

;; key bings for going to the matching starting or ending
;; brace called forward-sexp and backward-sexp
;; Note that this is done by default in XEmacs
(global-set-key [(meta left)] 'backward-sexp)
(global-set-key [(meta right)] 'forward-sexp)

;; show picture in emacs
(auto-image-file-mode)
(auto-compression-mode 1)

;; auto line break
(setq truncate-partial-width-windows nil)

;; show key strokes quickly
(setq echo-keystrokes 0.1)

;;(global-set-key (kbd "C-c g f") 'ffap-other-window)

;; switch window with shift + arrow keys
(windmove-default-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Run As Daemon
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(server-force-delete)
(server-start)


(provide 'jolly-basic)
