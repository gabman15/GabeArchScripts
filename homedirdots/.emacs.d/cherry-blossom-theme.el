(deftheme cherry-blossom
  "Created 2020-12-04.")

(custom-theme-set-variables
 'cherry-blossom
 '(fringe-mode 6))

(custom-theme-set-faces
 'cherry-blossom
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((t (:foreground "#d96e26" :background "#211d3c"))))
 '(fringe ((((class color) (min-colors 88)) (:background "#111111" :foreground "#506080")) (t (:background "#201520" :Foreground "#506080"))))
 '(mode-line ((((class color) (min-colors 88)) (:background "#222222" :foreground "#8c86e4")) (t (:background "#2b283d" :box nil :foreground "#8c86e4" :height 85))))
 '(mode-line-inactive ((((class color) (min-colors 88)) (:background "#111111" :foreground "#000000")) (t (:weight light :box nil :background "#202339" :foreground "#000000" :inherit (mode-line)))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:box nil (t (:inherit (highlight)))))))
 '(mode-line-buffer-id ((t (:weight bold :box nil))))
 '(cursor ((t (:foreground "#ffffff" :background "#d96e26"))))
 '(error ((t (:foreground "#cc3333"))))
 '(warning ((t (:foreground "#d96e26"))))
 '(minibuffer-prompt ((t (:weight bold :foreground "#606a92"))))
 '(region ((t (:background "#1F102f"))))
 '(secondary-selection ((((class color) (min-colors 88) (background dark)) (:background "#444083"))))
 '(font-lock-doc-face ((t (:foreground "#5F5A60"))))
 '(font-lock-comment-face ((t (:foreground "#5F5A60"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#5F5A60"))))
 '(font-lock-function-name-face ((t (:foreground "#F94FA0"))))
 '(font-lock-keyword-face ((t (:foreground "#742FD1"))))
 '(font-lock-string-face ((t (:foreground "#FFB5D8"))))
 '(font-lock-constant-face ((t (:foreground "#3EDAD4"))))
 '(font-lock-builtin-face ((t (:foreground "#9a99e7"))))
 '(font-lock-type-face ((t (:foreground "#DD0B53"))))
 '(font-lock-variable-name-face ((t (:foreground "#FEDA98"))))
 '(font-lock-negation-char-face ((t (:foreground "#0f0"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
 '(font-lock-warning-face ((t (:weight bold :foreground "#FF0"))))
 '(highlight ((((class color) (min-colors 88) (background light)) (:background "#503453")) (((class color) (min-colors 88) (background dark)) (:background "#503450"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "#999999")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "#999999"))))
 '(trailing-whitespace ((((class color) (background light)) (:background "#ff0000")) (((class color) (background dark)) (:background "#ff0000")) (t (:inverse-video t))))
 '(link ((((class color) (min-colors 88) (background light)) (:underline t :foreground "#f0b7f0")) (((class color) (background light)) (:underline t :foreground "#a044a0")) (((class color) (min-colors 88) (background dark)) (:underline t :foreground "#a069aa")) (((class color) (background dark)) (:underline t :foreground "#a069aa")) (t (:inherit (underline)))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:inherit (link))) (((class color) (background dark)) (:inherit (link)))))
 '(button ((t (:inherit (link)))))
 '(tooltip ((t (:foreground "#FFFFFF" :background "#5f5e8a"))))
 '(isearch ((((class color) (min-colors 88) (background light)) (:foreground "white" :background "#5533AA")) (((class color) (min-colors 88) (background dark)) (:foreground "white" :background "#5533AA")) (t (:inverse-video t))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:foreground "#000000" :background "#ffaaaa")) (((class color) (min-colors 88) (background dark)) (:foreground "#000000" :background "#880000")) (((class color grayscale)) (:foreground "#888888")) (t (:inverse-video t))))
 '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:foreground "white" :background "#331144")) (((class color) (min-colors 88) (background dark)) (:foreground "#CCCCCC" :background "#331144"))))
 '(match ((((class color) (min-colors 88) (background light)) (:foreground "black" :background "#5c2e7a")) (((class color) (min-colors 88) (background dark)) (:foreground "white" :background "#5c2e7a")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "#888888"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(default ((((class color) (min-colors 88)) (:foreground "#fff" :background "#000")) (t (:foreground "#fff" :background "#120F14")))))

(provide-theme 'cherry-blossom)
