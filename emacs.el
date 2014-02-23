; some fun when IDLE
(require 'zone)
(zone-when-idle 120)

; how annoying are gnu brats' indentation?
(setq c-default-style "linux")
(setq cpp-default-style "linux")

; why would goto-line not be mapped to a key binding? C-x g seems OK.
(global-set-key (kbd "C-x g") 'goto-line)

; hippies rock expansions by a great margin.
(global-set-key	(kbd "M-_") 'hippie-expand)

; this is to display columns as well, not only lines
(setq column-number-mode t)

; set the emacs locale to standard, and not to whatever my system locale is
(setq system-time-locale "C")

; insert the date in a buffer
(defun insert-date ()
  "Inserts standard date time string."
  (interactive)
  (insert (format-time-string "%c")))

; map it to a key binding
(global-set-key (kbd "C-c d") 'insert-date)
