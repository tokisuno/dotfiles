;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq user-full-name "Lucas Cordero"
      user-mail-address "tokisunosan@gmail.com")

(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 14 :height 1.0 :weight 'normal)
      doom-big-font (font-spec :family "JetBrainsMono Nerd Font" :size 20 :style "medium" :weight 'bold))

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

(use-package! org-habit
  :after org
  :config
  (setq org-habit-following-days 7
        org-habit-preceding-days 365
        org-habit-show-habits t))

(setq org-log-into-drawer t)

(setq org-todo-keyword-faces
      '(("TODO" . "red")
        ("NEXT" . "blue")
        ("WAITING" . "yellow")))

;; #+SEQ_TODO: NEXT(n) TODO(t) WAITING(w) PROJ(p) | DONE(d)
(setq org-directory "~/org/")

(use-package org-roam
  :ensure t
  :custom
  (setq org-roam-file-extensions '("org"))
  (org-roam-directory (file-truename "~/org/roam/"))
  (org-roam-dailies-directory (file-truename "~/org/roam/daily/"))
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

(use-package! org-roam-bibtex
  :after org-roam
  :config)

(setq bibtex-completion-bibliography '("~/org/roam/references/programming.bib"))

(setq org-latex-compiler "xelatex")

;; (after! citar (setq! citar-bibliography '("~/Sync/bibliographies/ambiguities.bib")))

;; making org-mode look good
(setq org-hide-emphasis-markers t)
(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
(add-hook 'org-mode-hook (lambda ()
                           (org-bullets-mode 1)
                           (olivetti-mode 1)
                           (display-line-numbers-mode -1)
                           ;; (mixed-pitch-mode 1)
                           ))

;; Japanese input switching
(setq default-input-method "japanese")
(general-define-key
 :states 'insert
 "q" (general-key-dispatch 'self-insert-command
       :timeout 0.25
       "q" 'toggle-input-method))
