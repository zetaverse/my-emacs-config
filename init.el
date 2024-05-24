(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t)
 '(custom-enabled-themes '(doom-vibrant))
 '(custom-safe-themes
   '("e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0" "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "c5878086e65614424a84ad5c758b07e9edcf4c513e08a1c5b1533f313d1b17f1" "e8ceeba381ba723b59a9abc4961f41583112fc7dc0e886d9fc36fa1dc37b4079" "9d5124bef86c2348d7d4774ca384ae7b6027ff7f6eb3c401378e298ce605f83a" "2b501400e19b1dd09d8b3708cefcb5227fda580754051a24e8abf3aff0601f87" "9f297216c88ca3f47e5f10f8bd884ab24ac5bc9d884f0f23589b0a46a608fe14" "013728cb445c73763d13e39c0e3fd52c06eefe3fbd173a766bfd29c6d040f100" "5f128efd37c6a87cd4ad8e8b7f2afaba425425524a68133ac0efd87291d05874" "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" "89d9dc6f4e9a024737fb8840259c5dd0a140fd440f5ed17b596be43a05d62e67" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "570263442ce6735821600ec74a9b032bc5512ed4539faf61168f2fdf747e0668" "443e2c3c4dd44510f0ea8247b438e834188dc1c6fb80785d83ad3628eadf9294" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f" "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22" "9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "1aa4243143f6c9f2a51ff173221f4fd23a1719f4194df6cef8878e75d349613d" "dc8285f7f4d86c0aebf1ea4b448842a6868553eded6f71d1de52f3dcbc960039" "467dc6fdebcf92f4d3e2a2016145ba15841987c71fbe675dcfe34ac47ffb9195" "f458b92de1f6cf0bdda6bce23433877e94816c3364b821eb4ea9852112f5d7dc" "016f665c0dd5f76f8404124482a0b13a573d17e92ff4eb36a66b409f4d1da410" "bf948e3f55a8cd1f420373410911d0a50be5a04a8886cabe8d8e471ad8fdba8e" "a44e2d1636a0114c5e407a748841f6723ed442dc3a0ed086542dc71b92a87aee" "eca44f32ae038d7a50ce9c00693b8986f4ab625d5f2b4485e20f22c47f2634ae" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "a138ec18a6b926ea9d66e61aac28f5ce99739cf38566876dc31e29ec8757f6e2" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "991ca4dbb23cab4f45c1463c187ac80de9e6a718edc8640003892a2523cb6259" "49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68" "75fb82e748f32de807b3f9e8c72de801fdaeeb73c791f405d8f73711d0710856" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "4ff1c4d05adad3de88da16bd2e857f8374f26f9063b2d77d38d14686e3868d8d" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "c92e7f152e99e9f2a0cdd8c122b487a881fb0aaaa1085d4539f68b2852ab3078" "ae426fc51c58ade49774264c17e666ea7f681d8cae62570630539be3d06fd964" "4fda8201465755b403a33e385cf0f75eeec31ca8893199266a6aeccb4adedfa4" "8b6506330d63e7bc5fb940e7c177a010842ecdda6e1d1941ac5a81b13191020e" "adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "a3010c151dc4f42d56dec26a85ae5640afc227bece71d058e394667718b66a49" "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" default))
 '(fringe-mode 0 nil (fringe))
 '(indicate-buffer-boundaries 'right)
 '(initial-buffer-choice
   "/Users/denzillewis/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/projects.org")
 '(left-margin 1)
 '(line-number-mode nil)
 '(org-agenda-files
   '("/Users/denzillewis/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/"))
 '(org-agenda-sorting-strategy
   '((agenda habit-down time-up deadline-up category-keep priority-down)
     (todo priority-down category-keep)
     (tags priority-down category-keep)
     (search category-keep)))
 '(org-journal-dir
   "~/Users/denzillewis/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/journal")
 '(package-selected-packages
   '(spacious-padding golden-ratio olivetti fountain-mode markdown-mode catppuccin-theme web-mode org-web-tools org-journal paper-theme ox-slack ox-pandoc real-auto-save use-package org-autolist treemacs restart-emacs org-bullets doom-themes doom-modeline all-the-icons))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(treemacs-width 27)
 '(treemacs-width-is-initially-locked nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#27212E" :foreground "#FFFFFF" :inverse-video nil :box nil :strike-through nil :extend nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "nil" :family "Menlo"))))
 '(fringe ((t :background "#27212E")))
 '(header-line ((t :box (:line-width 4 :color "#1e2128" :style nil))))
 '(header-line-highlight ((t :box (:color "#FFFFFF"))))
 '(keycast-key ((t)))
 '(line-number ((t :background "#27212E")))
 '(mode-line ((t :box (:line-width 6 :color "#1e2128" :style nil))))
 '(mode-line-active ((t :box (:line-width 6 :color "#1e2128" :style nil))))
 '(mode-line-highlight ((t :box (:color "#FFFFFF"))))
 '(mode-line-inactive ((t :box (:line-width 6 :color "#21242c" :style nil))))
 '(tab-bar-tab ((t :box (:line-width 4 :color "#242730" :style nil))))
 '(tab-bar-tab-inactive ((t :box (:line-width 4 :color "#2a2e38" :style nil))))
 '(tab-line-tab ((t)))
 '(tab-line-tab-active ((t)))
 '(tab-line-tab-inactive ((t)))
 '(vertical-border ((t :background "#27212E" :foreground "#27212E")))
 '(window-divider ((t (:background "#27212E" :foreground "#27212E"))))
 '(window-divider-first-pixel ((t (:background "#27212E" :foreground "#27212E"))))
 '(window-divider-last-pixel ((t (:background "#27212E" :foreground "#27212E")))))

;; use C-x for cut
;; C-c for copy
;; C-v for paste
(cua-mode 1)

;; Org Agenda Dispatcher Keybinding
(global-set-key (kbd "C-c a") #'org-agenda)

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
(setq org-hide-emphasis-markers t)

;; line wrap set to visual
(global-visual-line-mode t)

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
  ;; use the colorful treemacs theme
  (setq doom-themes-treemacs-theme "doom-colors")
  (doom-themes-treemacs-config)
  (setq doom-themes-treemacs-enable-variable-pitch nil)
  
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; Adds padding around windows and frames
(use-package spacious-padding
  :ensure t
  :hook (after-init . spacious-padding-mode)
  )

