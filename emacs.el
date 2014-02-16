; how annoying are gnu brats' indentation?
(setq c-default-style "linux")
(setq cpp-default-style "linux")

; why would goto-line not be mapped to a key binding? C-x g seems OK.
(global-set-key (kbd "C-x g") 'goto-line)

; hippies rock expansions by a great margin.
(global-set-key	(kbd "M-_") 'hippie-expand)
