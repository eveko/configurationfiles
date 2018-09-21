
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;Prevents the breaking of the hardlink
(setq backup-by-copying t)

(when (member "Hack" (font-family-list))
  (set-face-attribute 'default nil :font "Hack"))

(load-theme 'spacemacs-dark t)

;;disable startup hide unnecesary bars
(setq inhibit-startup-screen t)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(menu-bar-mode -1) 

;;set super
(setq w32-pass-lwindow-to-system nil)
(setq w32-lwindow-modifier 'super)
(w32-register-hot-key [s-])

;;Prevent unwanted windows to open
(define-key minibuffer-inactive-mode-map [mouse-1] #'ignore)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages (quote (markdown-mode ace-popup-menu spacemacs-theme ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;set language proofing
(setenv "LANG" "en_US, nl_NL")
(setq-default  ispell-program-name "c:/msys64/mingw64/bin/hunspell.exe")
(with-eval-after-load "ispell"
  (setq ispell-really-hunspell t)
  (setq ispell-program-name "hunspell")
  (setq ispell-dictionary "en_US,nl_NL")
  ;; ispell-set-spellchecker-params has to be called
  ;; before ispell-hunspell-add-multi-dic will work
  (ispell-set-spellchecker-params)
  (ispell-hunspell-add-multi-dic "en_US,nl_NL"))


;;keybindings - super
(global-set-key (kbd "s-k") 'kill-buffer-and-window) ;; Kils buffer
(global-set-key (kbd "s-e") 'eval-buffer) ;; Eval
(global-set-key (kbd "s-<tab>") 'next-buffer) ;; Next buffer
(global-set-key (kbd "s-`") 'previous-buffer) ;; previous buffer
