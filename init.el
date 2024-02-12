;; Application setup
(setq inhibit-startup-message t) ; hide the startup screen
(menu-bar-mode 0)
(tool-bar-mode 0)
(ido-mode 1)

(setq text-scale-mode-step 1.1)
(set-frame-font "-*-Menlo-regular-normal-normal-*-15-*-*-*-m-0-iso10646-1" nil t)

(global-key-binding (kbd "M-x") 'smex) ; Smex M-x override
(global-key-binding (kbd "M-X") 'smex-major-mode-commands)
(global-key-binding (kbd "C-c C-c M-x") 'execute-extended-command) ; Original M-x function

(setq backup-directory-alist '(("." . "~/.emacs.d/saves")))

;; Catppuccin (https://github.com/catppuccin/emacs)
(load-theme 'catppuccin :no-confirm)
(setq catppuccin-flavor 'mocha) ;; 'latte, 'frappe, 'macchiato, or 'mocha
(catppuccin-reload)
(defun clear-background ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'clear-background)

;; Mepla
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(smex catppuccin-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
