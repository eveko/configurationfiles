
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


