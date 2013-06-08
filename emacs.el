; Samuel's emacs init file

; I find the 2 following modes for C and C++ very good (I don't like GNU Emacs
; way of indenting, its pretty weird)
(defun linux-c-mode ()
 "C mode with adjusted defaults for use with the Linux 
kernel."
 (interactive)
 (c-mode)
 (setq c-indent-level 8)
 (setq c-brace-imaginary-offset 0)
 (setq c-brace-offset -8)
 (setq c-argdecl-indent 8)
 (setq c-label-offset -8)
 (setq c-continued-statement-offset 8)
 (setq indent-tabs-mode nil)
 (setq tab-width 8))

(defun linux-cpp-mode ()
 "C++ mode derived from the linux-c-mode: defaults for use
with the Linux kernel."
 (interactive)
 (c-mode)
 (setq cpp-indent-level 8)
 (setq cpp-brace-imaginary-offset 0)
 (setq cpp-brace-offset -8)
 (setq cpp-argdecl-indent 8)
 (setq cpp-label-offset -8)
 (setq cpp-continued-statement-offset 8)
 (setq indent-tabs-mode nil)
 (setq tab-width 8))

; this activates the linux-c-mode for files having '.c' and '.h' extension and
; and linux-cpp-mode for files having the '.cpp' and '.hpp' extension

(add-to-list 'auto-mode-alist '("\\.c\\'" . linux-c-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . linux-c-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . linux-cpp-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . linux-cpp-mode))

; set default font to Terminus (default size is 10)
(set-face-attribute 'default nil :font "Terminus" :height 100)

; disable blinking cursor
(blink-cursor-mode 0)

; color-theme is installed via 'emacs-goodies' package, so lets initialize and 
; yield my (yet) favourite color theme
(color-theme-initialize)
(color-theme-arjen)