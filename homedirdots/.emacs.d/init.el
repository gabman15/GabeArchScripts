(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;;(package-refresh-contents)

(setq custom-file "~/.emacs.d/custom.el")
(if (file-exists-p custom-file) (load custom-file ))

;;font
(add-to-list 'default-frame-alist '(font . "Hack-12"))

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
(setq org-agenda-files '("~/org/notes.org"))

(setq org-capture-templates
      '(("n" "Notes" entry
         (file+headline "~/org/notes.org" "Notes")
         "* %^{Heading} %t")
        ("t" "Tasks" entry
         (file+headline "~/org/notes.org" "Tasks")
         "* %^{Heading} %^t")))
;;--------------------------------------------------------------------------------
(when (display-graphic-p)
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)) 
;;--------------------------------------------------------------------------------

;; put backup files in a new place
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

(put 'downcase-region 'disabled nil)

;;evil mode
;;(require 'evil)
;;(evil-mode 1)
