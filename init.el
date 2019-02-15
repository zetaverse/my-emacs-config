
;; load emacs 24's package system. Add MELPA repository.
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
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (doom-vibrant)))
 '(custom-safe-themes
   (quote
    ("d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "99b2fdc7de612b74fcb76eb3a1962092cf729909223434f256c7007d490d787a" "3e2fd26606cba08448283cc16860c1deab138ede73c38c91fdaf4e5c60ece485" "5e5345ea15d0c2234356bc5958a224776b83198f0c3df7155d1f7575405ce990" "07ed389142fef99649ebcfe1f835cf564fc40bb342d8d2f4e13f05302378a47a" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "75bc4eb26434bbb4544db3e81a12acfc84d822ed0fd0706a42fa646089891043" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(fci-rule-color "#dedede")
 '(fringe-mode nil nil (fringe))
 '(initial-buffer-choice "~/Dropbox/org/work.org")
 '(jdee-db-active-breakpoint-face-colors (cons "#1c1f24" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1c1f24" "#7bc275"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1c1f24" "#484854"))
 '(line-spacing 0.2)
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/work.org" "~/Dropbox/org/personal.org" "~/Dropbox/org/worknotes.org" "~/Dropbox/org/research.org")))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-mouse org-rmail org-w3m)))
 '(org-super-agenda-groups nil)
 '(org-super-agenda-mode nil)
 '(org-todo-keyword-faces (quote (("BLOCKED" . " #ff665c"))))
 '(org-todo-keywords (quote ((sequence "TODO" "DONE"))))
 '(package-selected-packages
   (quote
    (cider clojure-mode paredit racket-mode elpy epresent org-page writeroom-mode markdown-mode olivetti org-pomodoro magit poet-theme doom-modeline org-bullets doom-themes)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tool-bar-position (quote top))
 '(vc-annotate-background "#242730")
 '(vc-annotate-color-map
   (list
    (cons 20 "#7bc275")
    (cons 40 "#a6c677")
    (cons 60 "#d1ca79")
    (cons 80 "#FCCE7B")
    (cons 100 "#f4b96e")
    (cons 120 "#eda461")
    (cons 140 "#e69055")
    (cons 160 "#db8981")
    (cons 180 "#d082ae")
    (cons 200 "#C57BDB")
    (cons 220 "#d874b0")
    (cons 240 "#eb6d86")
    (cons 260 "#ff665c")
    (cons 280 "#d15e59")
    (cons 300 "#a35758")
    (cons 320 "#754f56")
    (cons 340 "#62686E")
    (cons 360 "#62686E")))
 '(vc-annotate-very-old-color nil)
 '(window-divider-default-places t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "unknown" :slant normal :weight normal :height 110 :width normal)))))

;; use C-x for cut
;; C-c for copy
;; C-v for paste
(cua-mode 1)

;; saves desktop state 
(desktop-save-mode 1)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-icon nil)

;; org-mode improvements
(setq org-startup-indented t)
(setq org-cycle-separator-lines 0)
(setq org-blank-before-new-entry (quote ((heading)
                                         (plain-list-item . auto))))
(setq org-insert-heading-respect-content nil)

;; line wrap set to visual
(global-visual-line-mode t)
