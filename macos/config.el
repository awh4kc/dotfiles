;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(setq user-full-name "Alex Hicks"
      user-mail-address "awh4kc@virginia.edu"
      epa-file-encrypt-to user-mail-address)

(setq doom-font (font-spec :family "Fira Code" :size 14)
      doom-variable-pitch-font (font-spec :family "Monaco" :size 13))

(when IS-LINUX
  (font-put doom-font :weight 'semi-light))

(setq doom-theme 'doom-one)

(after! neotree
  (setq doom-themes-neotree-file-icons 'icons)
  (setq doom-themes-neotree-enable-file-icons 'icons)
  (setq neo-theme 'icons))

(after! company
  (setq company-idle-delay 0))

(after! doom-themes
  (setq doom-neotree-file-icons t))

(setq-default evil-escape-key-sequence "jk")

(use-package! dockerfile-mode
  :mode "Dockerfile\\'"
  :config
  (put 'dockerfile-image-name 'safe-local-variable #'stringp)
  )

