(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-image-actual-width 128)
 '(org-link-file-path-type 'relative)
 '(org-startup-truncated nil)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(try geiser geiser-guile evil-commentary goto-chg evil-collection evil org-roam magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; elagant emacs theme
(add-to-list 'load-path "~/.emacs.d/bread-theme")
(use-package sanity)
(use-package bread)

;; evil mode
(use-package evil
  :init
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-redo)
  (setq evil-disable-insert-state-bindings t)
  ;; (setq evil-regexp-search nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; allows g; and g, motions
(use-package goto-chg)

;; comment with vim motions
(use-package evil-commentary
  :config
  (evil-commentary-mode))

;; ;; 4 spaces in insert mode, cycle indent in normal mode
;; (setq-default indent-tabs-mode nil)
;; (setq tab-stop-list (number-sequence 4 120 4))
;; (define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)
;; (define-key evil-normal-state-map (kbd "TAB") 'indent-for-tab-command)
;; (setq-default backward-delete-char-untabify-method nil)


(define-key evil-normal-state-map (kbd "TAB") 'indent-for-tab-command)
(setq-default tab-always-indent 'complete)

;; no history scroll in info mode
(evil-collection-define-key 'normal 'Info-mode-map [double-wheel-left] nil)
(evil-collection-define-key 'normal 'Info-mode-map [double-wheel-right] nil) 

(setq mac-pass-command-to-system nil)

(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(define-key query-replace-map [escape] 'quit)



;; set mouse scroll left and right (use for no line wrap)
;; (setq mouse-wheel-tilt-scroll t)
;; (setq mouse-wheel-flip-direction t)

;; Turn off swiping to switch buffers (defined in mac-win.el)
(global-unset-key [swipe-left])
(global-unset-key [swipe-right])

(setq ring-bell-function 'ignore)

;; allow highligt and type to replace
(delete-selection-mode 1)

(setq org-roam-directory (file-truename "~/Documents/notebox"))
(org-roam-db-autosync-mode)

(global-set-key (kbd "C-c c") #'org-capture)

(setq delete-by-moving-to-trash t)
