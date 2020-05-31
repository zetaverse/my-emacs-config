(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
  ;; and `package-pinned-packages`. Most users will not need or want to do this.
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  )
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (doom-moonlight)))
 '(custom-safe-themes
   (quote
    ("85837dbba3c4e77ffcda9d5d1289613b27484b6c4cb232fc2ffaa2e2ebd5712f" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" default)))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "C:\\Users\\lenovo\\Dropbox\\org")
 '(org-agenda-files
   (quote
    ("C:\\Users\\Lenovo\\Dropbox\\org\\study.org" "C:\\Users\\Lenovo\\Dropbox\\org\\personal.org" "C:\\Users\\Lenovo\\Dropbox\\org\\tasks.org")))
 '(package-selected-packages
   (quote
    (markdown-mode markdown-mode+ writeroom-mode use-package treemacs org-autolist org-bullets restart-emacs doom-modeline doom-themes)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(treemacs-width 28))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))

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
  
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
  (doom-themes-treemacs-config)
  (setq doom-themes-treemacs-enable-variable-pitch nil)
  
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))
