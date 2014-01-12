; how annoying are gnu brats' indentation?
(setq c-default-style "linux")
(setq cpp-default-style "linux")

; why would goto-line not be mapped to a key binding? C-x g seems OK.
(global-set-key (kbd "C-x g") 'goto-line)

; hippies rock expansions by a great margin.
(global-set-key	(kbd "M-_") 'hippie-expand)

; colors are cool, don't get me wrong, but I just can't read with a rainbow.
(global-font-lock-mode 0)

; why is there an annoying menu bar at the top of my editor?
(menu-bar-mode -1)

; if --color=no was set this wouldn't be necessary but we cannot do that from
; the init file and would have to call it every time we invoked emacs, and
; that's a pain, so we have to manually set the colors for the mode-line and
; change it everytime we change terminal colors, which may be a pain
(custom-set-variables)
(custom-set-faces
 '(mode-line ((t (:background "black" :foreground "white" :box (:line-width -1 :style released-button))))))
