 
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;(unless (package-installed-p 'spacemacs-theme)
 ;;(package-refresh-contents)
 ;;(package-install 'spacemacs-theme))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(golden-ratio-mode t)
 '(org-agenda-files (quote ("~/Dokumentumok/agenda.org")))
 '(package-selected-packages
   (quote
    (haskell-mode md4rd evil-collection golden-ratio command-log-mode command-log all-the-icons ewal-evil-cursors ewal-spacemacs-themes ewal ag eglot ggtags lsp-ui company-lsp ccls evil-commentary ibuffer-sidebar vscode-icon dired-sidebar evil-leader yasnippet-snippets yasnippet company-irony swiper popup-kill-ring exwm symon dmenu spaceline company dashboard rainbow-delimiters evil sudo-edit winum smex ido-vertical-mode org-bullets beacon spacemacs-theme which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-lead-face ((t (:foreground "white" :background "#e52b50"))))
 '(avy-lead-face-0 ((t (:foreground "white" :background "#4f57f9"))))
 '(avy-lead-face-1 ((t (:foreground "white" :background "gray"))))
 '(avy-lead-face-2 ((t (:foreground "white" :background "#f86bf3")))))
