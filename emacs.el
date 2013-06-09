; Samuel's emacs init file

; set default C indentation style to the linux kernel one and set tab width to 8
(setq c-default-style "linux"
      c-basic-offset 8)

; set default font to Terminus (default size is 10)
(set-face-attribute 'default nil :font "Terminus" :height 100)

; disable blinking cursor
(blink-cursor-mode 0)

; color-theme is installed via 'emacs-goodies' package, so lets initialize and 
; yield my (yet) favourite color theme
(color-theme-initialize)
(color-theme-arjen)