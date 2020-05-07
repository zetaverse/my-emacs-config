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
   '("melpa" . "http://melpa.org/packages/")
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
 '(beacon-color "#F8BBD0")
 '(company-quickhelp-color-background "#D0D0D0")
 '(company-quickhelp-color-foreground "#494B53")
 '(compilation-message-face (quote default))
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (doom-peacock)))
 '(custom-safe-themes
   (quote
    ("2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "56911bd75304fdb19619c9cb4c7b0511214d93f18e566e5b954416756a20cc80" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "24132f7b6699c6e0118d742351b74141bac3c4388937e40db9207554eaae78c9" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "51956e440cec75ba7e4cff6c79f4f8c884a50b220e78e5e05145386f5b381f7b" "58c3313b4811ed8b30239b1d04816f74d438bcb72626d68181f294b115b7220d" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" "6231254e74298a1cf8a5fee7ca64352943de4b495e615c449e9bb27e2ccae709" "9b01a258b57067426cc3c8155330b0381ae0d8dd41d5345b5eddac69f40d409b" "efbe8f0a87281bcfa5e560d5ca10268c735de3a3bb160b54c520d02609aed9d8" "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "30a733e0b23c0df7040ee717707fe15e42b1dd0fbc4c5d4f98502c274ccf15ee" "34dc2267328600f3065630e161a8ae59939700684c232073cdd5afbf78456670" "0f1733ad53138ddd381267b4033bcb07f5e75cd7f22089c7e650f1bb28fc67f4" "fa477d10f10aa808a2d8165a4f7e6cee1ab7f902b6853fbee911a9e27cf346bc" "7d4340a89c1f576d1b5dec57635ab93cdc006524bda486b66d01a6f70cffb08e" "a9d67f7c030b3fa6e58e4580438759942185951e9438dd45f2c668c8d7ab2caf" "e62b66040cb90a4171aa7368aced4ab9d8663956a62a5590252b0bc19adde6bd" "53760e1863395dedf3823564cbd2356e9345e6c74458dcc8ba171c039c7144ed" "ff829b1ac22bbb7cee5274391bc5c9b3ddb478e0ca0b94d97e23e8ae1a3f0c3e" "11e0bc5e71825b88527e973b80a84483a2cfa1568592230a32aedac2a32426c1" "51043b04c31d7a62ae10466da95a37725638310a38c471cc2e9772891146ee52" "030346c2470ddfdaca479610c56a9c2aa3e93d5de3a9696f335fd46417d8d3e4" "886fe9a7e4f5194f1c9b1438955a9776ff849f9e2f2bbb4fa7ed8879cdca0631" "abdb1863bc138f43c29ddb84f614b14e3819982936c43b974224641b0b6b8ba4" "68bf77811b94a9d877f9c974c19bafe5b67b53ed82baf96db79518564177c0fb" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "d97baf5a34c87b05508739505cad03438cde8efa2a0d350c7773f2a8bc26a50d" "0dd2666921bd4c651c7f8a724b3416e95228a13fca1aa27dc0022f4e023bf197" "b73a23e836b3122637563ad37ae8c7533121c2ac2c8f7c87b381dd7322714cd0" "7824eb15543c5c57c232c131ca64c4f25bfeeeda6744f71b999787a9172fa74e" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "70f5a47eb08fe7a4ccb88e2550d377ce085fedce81cf30c56e3077f95a2909f2" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "1068ae7acf99967cc322831589497fee6fb430490147ca12ca7dd3e38d9b552a" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "f8fb7488faa7a70aee20b63560c36b3773bd0e4c56230a97297ad54ff8263930" "f8067b7d0dbffb29a79e0843797efabdf5e1cf326639874d8b407e9b034136a4" "97965ccdac20cae22c5658c282544892959dc541af3e9ef8857dbf22eb70e82b" "9129c2759b8ba8e8396fe92535449de3e7ba61fd34569a488dd64e80f5041c9f" "ab564a7ce7f2b2ad9e2cfe9fe1019b5481809dd7a0e36240c9139e230cc2bc32" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "75bc4eb26434bbb4544db3e81a12acfc84d822ed0fd0706a42fa646089891043" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "6e32d7aab92ad2ad4d3a915cd9ace5dc1d9d8f0486b785bdb86c79ff5ca0c189" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" default)))
 '(evil-emacs-state-cursor (quote ("#D50000" hbar)))
 '(evil-insert-state-cursor (quote ("#D50000" bar)))
 '(evil-normal-state-cursor (quote ("#F57F17" box)))
 '(evil-visual-state-cursor (quote ("#66BB6A" box)))
 '(fci-rule-color "#dedede" t)
 '(highlight-changes-colors (quote ("#ff8eff" "#ab7eff")))
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   (quote
    ("#F57F17" "#66BB6A" "#0097A7" "#42A5F5" "#7E57C2" "#D84315")))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors
   (quote
    (("#424748" . 0)
     ("#63de5d" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#424748" . 100))))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#3a81c3")
     ("OKAY" . "#3a81c3")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#42ae2c")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(initial-buffer-choice "~/Dropbox/org/tasks.org")
 '(jdee-db-active-breakpoint-face-colors (cons "#1c1f24" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1c1f24" "#7bc275"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1c1f24" "#484854"))
 '(left-margin 0)
 '(line-spacing 0.2)
 '(magit-diff-use-overlays nil)
 '(org-agenda-diary-file (quote diary-file))
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/tasks.org" "~/Dropbox/org/personal.org" "~/Dropbox/org/notes.org")))
 '(org-agenda-ignore-properties (quote (effort appt stats category)))
 '(org-export-backends
   (quote
    (ascii beamer html icalendar latex md odt ox-pandoc ox-twbs ox-slimhtml ox-html5slide ox-gfm ox-epub)))
 '(org-hierarchical-todo-statistics nil)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-mouse org-rmail org-w3m)))
 '(org-super-agenda-groups nil)
 '(org-super-agenda-mode t)
 '(org-support-shift-select nil)
 '(org-todo-keyword-faces nil)
 '(org-todo-keywords (quote ((sequence "TODO" "DONE"))))
 '(package-selected-packages
   (quote
    (real-auto-save habamax-theme flatui-theme minimal-theme ample-theme modus-operandi-theme alda-mode org-web-tools speed-type pdf-tools restart-emacs treemacs synosaurus sly slime org-journal csv-mode fountain-mode yasnippet writeroom-mode writegood-mode simple-httpd rainbow-mode powerthesaurus paredit-everywhere ox-twbs ox-slimhtml ox-pandoc ox-minutes ox-html5slide ox-gfm ox-epub org-sticky-header org-download org-bullets org-autolist mustache markdown-mode magit git doom-themes doom-modeline alert)))
 '(pdf-view-midnight-colors (quote ("#655370" . "#fbf8ef")))
 '(pos-tip-background-color "#E6DB74")
 '(pos-tip-foreground-color "#242728")
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(tabbar-background-color "#ffffffffffff")
 '(tool-bar-mode nil)
 '(treemacs-indentation 1)
 '(treemacs-width 25)
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
 '(weechat-color-list
   (unspecified "#242728" "#424748" "#F70057" "#ff0066" "#86C30D" "#63de5d" "#BEB244" "#E6DB74" "#40CAE4" "#06d8ff" "#FF61FF" "#ff8eff" "#00b2ac" "#53f2dc" "#f8fbfc" "#ffffff")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "unknown" :slant normal :weight normal :height 110 :width normal))))
 '(org-habit-overdue-face ((t (:background "#944a49" :weight bold)))))

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
(require 'org-tempo)
;; using tab key to indent within src block
(setq org-src-tab-acts-natively t)

;; Auto-save setting for other files
(require 'real-auto-save)
(add-hook 'prog-mode-hook 'real-auto-save-mode)

;; Auto-save for org-mode
(add-hook 'org-mode-hook 'my-org-mode-autosave-settings)
(defun my-org-mode-autosave-settings ()
  (set (make-local-variable 'auto-save-visited-file-name) t)
  (auto-save-mode t)
  (setq auto-save-interval 10))
