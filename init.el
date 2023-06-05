(tooltip-mode    -1)
(tool-bar-mode   -1)
(menu-bar-mode   -1)
(scroll-bar-mode -1)

(setq visible-bell                t)
(column-number-mode               t)
(delete-selection-mode            t)
(global-visual-line-mode          t)
(load-theme 'wombat               t)
(setq inhibit-startup-message     t)
(global-display-line-numbers-mode t)

(set-fringe-mode 10)

(global-unset-key (kbd "C-z"))

(setq mouse-whell-scroll-amount '(2 ((shift) . 1))
      mouse-whell-progressive-speed nil
      mouse-whell-follow-mouse 't
      scroll-setp 1)

(set-face-attribute 'default nil :font "Cascadia Code" :height 120)

(setq-default cursor-type 'bar)

(defun debmx-new-buffer()
  "Cria um novo buffer 'sem nome' ."
  (interactive)
  (let ((debmx/buf (generate-new-buffer "sem-nome")))
    (switch-to-buffer debmx/buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)
    debmx/buf))

(setq initial-major-mode 'prog-mode)
(setq initial-buffer-choice 'debmx-new-buffer)
(setq backup-directory-alist `(("." . "~/saves")))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)






(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
