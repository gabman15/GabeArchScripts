(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;;(package-refresh-contents)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(gruvbox-dark-hard))
 '(custom-safe-themes
   '("6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "6685f7977eeb14d7cea800cd08fad58416c2a60900b41aef8f391d0f63c329a8" "2aa073a18b2ba860d24d2cd857bcce34d7107b6967099be646d9c95f53ef3643" default))
 '(fringe-mode 6 nil (fringe))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(go-translate which-key ement sml-mode auto-complete-auctex all-the-icons-dired all-the-icons arduino-cli-mode arduino-mode gruvbox-theme markdown-mode rust-mode gnu-elpa-keyring-update ##))

 '(vhdl-basic-offset 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;font
(add-to-list 'default-frame-alist '(font . "Hack-13"))

(setq paren-mode t)
(setq column-number-mode t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(tool-bar-mode -1)
(menu-bar-mode -1)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)


;;org mode
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)




;;--------------------------------------------------------------------------------
(when (display-graphic-p)
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)) 
;;--------------------------------------------------------------------------------

;; put backup files in a new place
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

(require 'go-translate)
(setq gts-translate-list '(("jp" "en")))

(setq gts-default-translator
      (gts-translator
       :picker (gts-prompt-picker)
       :engines (list (gts-bing-engine) (gts-google-engine))
       :render (gts-buffer-render)))

