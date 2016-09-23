(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable"
  . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)
(package-refresh-contents)

;;; Auto install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; Iedit
(use-package iedit
  :ensure t
  )

;;; Evil mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  )
;; Emacs state for git rebase
(add-to-list 'evil-emacs-state-modes 'git-rebase-mode)

;;; Git
(use-package magit
  :ensure t
  )

;;; Intero
(use-package intero
  :ensure t
  :config
  (add-hook 'haskell-mode-hook 'intero-mode)
  )

;;; Vim like scrolling
(use-package smooth-scrolling
  :ensure t
  :config
  (setq scroll-margin 5
    scroll-conservatively 9999
    scroll-step 1)
  )

;;; Relative line numbers
(use-package relative-line-numbers
  :ensure t
  :config
  (global-relative-line-numbers-mode)
  )
(defun relative-abs-line-numbers-format (offset)
  (if (= 0 offset)
      (number-to-string (line-number-at-pos))
    (number-to-string (abs offset))))
(setq relative-line-numbers-format 'relative-abs-line-numbers-format)

;;; Highlight current line
(global-hl-line-mode)

;;; No blinking cursor
(blink-cursor-mode 0)

;;; Show whitespace
(global-whitespace-mode 1)
(setq whitespace-display-mappings '(
  (space-mark   32  [183]     [46]  )
  (newline-mark 10  [8629 10]       )
  (tab-mark     9   [8677 9]  [92 9])
    ))
(custom-set-faces
  '(whitespace-newline ((t (:foreground "gray30"))))
  '(whitespace-space ((t (:foreground "gray30" :background nil))))
  '(whitespace-tab ((t (:foreground "gray30"))))
  )

;;; Delete whitespace on save
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Font
(set-frame-font "Meslo 12")

;;; Colour theme
(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-eighties t)
  )

;;; Powerline
(use-package powerline
  :ensure t
  :config
  (setq powerline-default-separator nil)
  )
(use-package powerline-evil
  :ensure t
  :config
  (powerline-evil-vim-color-theme)
  (setq powerline-evil-tag-style 'verbose)
    ;; sRGB doesn't blend with Powerline's pixmap colors, but is only
    ;; used in OS X. Disable sRGB before setting up Powerline.
    ;;(when (memq window-system '(mac ns))
     ;;   (setq ns-use-srgb-colorspace nil))
  )

;; Browsing wrapped lines with j / k
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;;; Spaces to indent
(setq-default tab-width 4 indent-tabs-mode nil)

;;; Fill column, auto line break column limit
(use-package fill-column-indicator
  :ensure t
  )
(turn-on-auto-fill)
(set-fill-column 80)
(fci-mode)
