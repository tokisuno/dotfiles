;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq user-full-name "Lucas Cordero"
      user-mail-address "tokisunosan@gmail.com")

(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 16 :height 1.0 :weight 'normal)
      doom-big-font (font-spec :family "JetBrainsMono Nerd Font" :size 24 :style "medium" :weight 'bold)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 24 :height 1.5 :weight 'normal))

(setq doom-theme 'doom-gruvbox)
(setq display-line-numbers-type t)

;;; Org Mode Stuff
(use-package! websocket
  :after org-roam)

(use-package! org-roam-ui
  :after org-roam
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

(setq org-directory "~/org/")

;; should i start using slugs..? i don't have thattt many notes and i organize them
;; through both metadata and by adding them to their parent node.
;; hmm...
(use-package org-roam
  :ensure t
  :custom
  (setq org-roam-file-extensions '("org"))
  (org-roam-directory (file-truename "~/org/roam/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ("C-c n u" . org-roam-db-build-cache)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  (require 'org-roam-protocol))

;; (after! citar (setq! citar-bibliography '("~/Sync/latex/bibs/finalproj.bib")))

;; doesn't run otherwise
(pdf-tools-install)

;; making org-mode look good
(setq org-hide-emphasis-markers t)
(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
(add-hook 'org-mode-hook (lambda ()
                           (org-bullets-mode 1)
                           (olivetti-mode 1)
                           (display-line-numbers-mode -1)
                           (mixed-pitch-mode 1)
                           ))

;; Japanese input switching
(setq default-input-method "japanese")
(general-define-key
 :states 'insert
 "q" (general-key-dispatch 'self-insert-command
       :timeout 0.25
       "q" 'toggle-input-method))
