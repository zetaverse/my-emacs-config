(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.org/packages/")
   t))
   

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (doom-peacock)))
 '(custom-safe-themes
   (quote
    ("7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" default)))
 '(font-use-system-font t)
 '(initial-buffer-choice "~/Dropbox/org/tasks.org")
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/tasks.org" "~/Dropbox/org/personal.org")))
 '(package-selected-packages
   (quote
    (markdown-mode real-auto-save doom-modeline doom-themes org-bullets restart-emacs treemacs)))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(treemacs-width 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "APPL" :slant normal :weight normal :height 110 :width normal)))))


;; use C-x for cut
;; C-c for copy
;; C-v for paste
(cua-mode 1)

;; saves desktop state 
;;(desktop-save-mode 1)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

; Doom modeline
(require 'doom-modeline)
(doom-modeline-mode 1)

;; org-mode improvements
(setq org-startup-indented t)
(setq org-cycle-separator-lines 0)
(setq org-blank-before-new-entry (quote ((heading)
                                         (plain-list-item . auto))))
(setq org-insert-heading-respect-content nil)
(add-hook 'org-mode-hook (lambda () (org-autolist-mode)))

;; line wrap set to visual
(global-visual-line-mode t)

;; hide menu-bar
(menu-bar-mode -1)

;; avoids file conflicts when multiple instances of emacs are running
(global-auto-revert-mode t)

;; org source blocks requirements
;; (require 'org-tempo)
;; using tab key to indent within src block
;; (setq org-src-tab-acts-natively t)

;; Auto-save setting for other files
(require 'real-auto-save)
(add-hook 'prog-mode-hook 'real-auto-save-mode)

;; Auto-save for org-mode
(add-hook 'org-mode-hook 'my-org-mode-autosave-settings)
(defun my-org-mode-autosave-settings ()
  (set (make-local-variable 'auto-save-visited-file-name) t)
  (auto-save-mode t)
  (setq auto-save-interval 10))


(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
  (doom-themes-treemacs-config)
  (setq doom-themes-treemacs-enable-variable-pitch nil)
  
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))
