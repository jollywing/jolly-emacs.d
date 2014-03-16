
;;---------------- ECB -----------------------
;; (require 'ecb-autoloads)


;;---------------- CEDET -----------------------

;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
;; IMPORTANT: For Emacs >= 23.2, you must place this *before* any
;; CEDET component (including EIEIO) gets activated by another 
;; package (Gnus, auth-source, ...).

;; REF <http://alexott.net/en/writings/emacs-devenv/EmacsCedet.html>

;; because the cedet is bundled  with emacs now, this is not needed.
;; (load-file "~/blog/emacs-lisp/cedet-1.1/common/cedet.el")
; (require 'cedet)

;; This can only work for newer version of cedet
;; (semantic-mode 1)

;; This is enabled by (semantic-load-enable-code-helpers)
;; (require 'semantic-ia)

;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:

;; This enables the database and idle reparse engines
; (semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode,
;;   imenu support, and the semantic navigator
;; (semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as intellisense mode,
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-gaudy-code-helpers)

;; (semantic-load-enable-excessive-code-helpers)
;; (semantic-load-enable-semantic-debugging-helpers)


;; * This enables the use of Exuberant ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languages only via ctags.
;; (semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; enable ctags for some languages:
;;  Unix Shell, Perl, Pascal, Tcl, Fortran, Asm
; (when (cedet-ectag-version-check)
;   (semantic-load-enable-primary-exuberent-ctags-support))


;; enable semanticdb
;; (global-semanticdb-minor-mode 1)
;; if you want to enable support for gnu global
;; TO FIX: byte-code: Symbol's function definition is void: eieio--defgeneric-init-form
;; (when (cedet-gnu-global-version-check t)
;;   (semanticdb-enable-gnu-global-databases 'c-mode)
;;   (semanticdb-enable-gnu-global-databases 'c++-mode)
;;   (semanticdb-enable-gnu-global-databases 'java-mode)
;;   (semanticdb-enable-gnu-global-databases 'python-mode))

;; add JDK classpath for code parsing
; (require 'semanticdb-javap)

;; Enable EDE (Project Management) features
; (global-ede-mode 1)
; 
; (ede-cpp-root-project "EastRogue"
;                       :name "East Rogue"
;                       :file "~/projects/east-rogue/trunk/makefile"
;                       :include-path '("/")
;                       :system-include-path '("/usr/include/SDL"))

;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)

; (global-semantic-idle-scheduler-mode nil)
;; cedet try to complete your input when you stop inputing
;; (global-semantic-idle-completions-mode nil)

;; Enable source code folding
; (global-semantic-tag-folding-mode 1)
; (define-key semantic-tag-folding-mode-map (kbd "C-c -") 'semantic-tag-folding-fold-block)
; (define-key semantic-tag-folding-mode-map (kbd "C-c =") 'semantic-tag-folding-show-block)
; (define-key semantic-tag-folding-mode-map (kbd "C-+") 'semantic-tag-folding-show-all)
; (define-key semantic-tag-folding-mode-map (kbd "C-=") 'semantic-tag-folding-fold-all)

;; When you input "." or ">", list the members of STRUCT or CLASS in other window.
;; (defun my-c-mode-cedet-hook ()
;;   (local-set-key "." 'semantic-complete-self-insert)
;;   (local-set-key ">" 'semantic-complete-self-insert))
;; (add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

;; Key bindings
; (defun my-cedet-hook ()
;   ;; completion
;   (local-set-key [(control tab)] 'semantic-ia-complete-symbol-menu)
;   (local-set-key (kbd "C-c ?") 'semantic-ia-complete-symbol)
;   (local-set-key (kbd "C-c RET") 'semantic-ia-describe-class)
;   (local-set-key (kbd "C-c SPC") 'senator-completion-menu-popup)
;   ;; navigation
;   (local-set-key (kbd "C-c j") 'semantic-ia-fast-jump)
;   (local-set-key (kbd "C-c r") 'semantic-symref-symbol)
;   (local-set-key (kbd "C-c R") 'semantic-symref))
; 
; (add-hook 'c-mode-common-hook 'my-cedet-hook)
; (add-hook 'python-mode-hook 'my-cedet-hook)
; (add-hook 'python-mode-hook
;           (lambda() (add-to-list 'ac-sources 'ac-source-semantic)))
; 
; (defun c-mode-cedet-hook()
;   (local-set-key (kbd "C-c i") 'semantic-decoration-include-visit)
;   (local-set-key (kbd "C-c e") 'semantic-analyze-proto-impl-toggle)
;   (local-set-key (kbd "C-c p") 'semantic-ia-show-summary))
; (add-hook 'c-mode-common-hook 'c-mode-cedet-hook)

(provide 'jolly-cedet)
