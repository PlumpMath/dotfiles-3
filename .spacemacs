;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     osx
     ( auto-completion :variables
                       auto-completion-enable-snippets-in-popup t
                       auto-completion-enable-help-tooltip t
                       auto-completion-enable-sort-by-usage t)
     better-defaults
     emacs-lisp
     deft
     (org :variables
          org-enable-github-support t)
     git
     github
     markdown
     clojure
     lispy
     html
     erc
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     themes-megapack
     command-log
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default

   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading t
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         leuven
                         jbeans
                         dichromacy
                         twilight-anti-bright
                         spacemacs-dark
                         spacemacs-light
                         molokai
                         spacegray
                         planet
                         ;; stekene-dark
                         ;; minimal
                         ;; dorsey
                         ;; spacegray
                         ;; soft-charcoal
                         ;; planet
                         ;; ritchie
                         ;; sanityinc-tomorrow-day
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  ;; The delay between the two key presses can be customized with
  ;; the variable `evil-escape-delay'. Default is `0.1'.
  (setq evil-escape-delay 0.2)

  ;; The key sequence can be entered in any order by setting
  ;; the variable `evil-escape-unordered-key-sequence' to non nil.
  (setq evil-escape-unordered-key-sequence t)

  ;; Make emacs follow symlinks without prompting
  (setq vc-follow-symlinks t)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."

(add-to-list 'auto-mode-alist '("\\.xml\\'" . html-mode))

;; Make the Powerline a little prettier
(setq powerline-default-separator 'utf-8)

;; Change the leuven theme cursor to a dark color

;; (custom-theme-set-faces
;;    'leuven
;;    `(cursor ((,class (:background "#212121")))))

;; C = 'control' = control
;; M = 'meta' = alt
;; s = 'super' = command (next to space bar on mac)
;; S = 'shift' = shift
;; H = 'hyper' = not bound by default
;;
;; To bind keys in hybrid mode use evil-hybrid-state-map
;; E.g. (define-key evil-hybrid-state-map (kbd "C-w") 'some-function-name)
;;
;; Keyboard Shortcuts
;; =====================
;; C = 'control' = control
;; M = 'meta' = alt
;; s = 'super' = command (next to space bar on mac)
;; S = 'shift' = shift
;; H = 'hyper' = not bound by default
;;
;; To bind keys in hybrid mode use evil-hybrid-state-map
;; E.g. (define-key evil-hybrid-state-map (kbd "C-w") 'some-function-name)
;;
;; (define-key evil-motion-state-map "k" 'evil-next-line)

;; (define-key evil-motion-state-map ";" 'evil-forward-char)
;; (define-key evil-motion-state-map "'" 'evil-end-of-line)
;; (define-key evil-motion-state-map "h" 'evil-beginning-of-line)
;; (define-key evil-motion-state-map (kbd "C-k") 'evil-next-line)
;; (define-key evil-motion-state-map (kbd "C-l" ) 'evil-previous-line)
;; (define-key evil-motion-state-map (kbd "C-j" ) 'evil-backward-char)
;; (define-key evil-motion-state-map (kbd "C-;" ) 'evil-forward-char)
;; (define-key evil-motion-state-map (kbd "C-'" ) 'evil-end-of-line)
;; (define-key evil-motion-state-map (kbd "C-h" ) 'evil-beginning-of-line)
;; (define-key evil-motion-state-map (kbd "C-M-j") 'backward-word)
;; (define-key evil-motion-state-map (kbd "C-M-;") 'forward-word)

(define-key evil-insert-state-map (kbd "C-j") 'next-line)
(define-key evil-insert-state-map (kbd "C-k" ) 'previous-line)
(define-key evil-insert-state-map (kbd "C-h" ) 'backward-char)
(define-key evil-insert-state-map (kbd "C-l" ) 'forward-char)

;; C-j default is electric-newline-and-maybe-indent. Vim has o and O
(define-key evil-insert-state-map (kbd "C-j") 'evil-next-line)

;; C-k default is kill-line. Vim mode has dd
(define-key evil-insert-state-map (kbd "C-k" ) 'evil-previous-line)

;; C-h <Rte> default is view-order-manuals. Vim has SPC h ...
(define-key evil-insert-state-map (kbd "C-h" ) 'evil-backward-char)

;; C-l default is recenter-top-bottom. Vim has H, M, L
(define-key evil-insert-state-map (kbd "C-l" ) 'evil-forward-char)

;; (define-key evil-insert-state-map (kbd "C-k") 'evil-next-line)
;; (define-key evil-insert-state-map (kbd "C-l" ) 'evil-previous-line)
;; (define-key evil-insert-state-map (kbd "C-j" ) 'evil-backward-char)
;; (define-key evil-insert-state-map (kbd "C-;" ) 'evil-forward-char)
;; (define-key evil-insert-state-map (kbd "C-'" ) 'move-end-of-line)
;; (define-key evil-insert-state-map (kbd "C-f" ) 'evil-beginning-of-line)
;; (define-key evil-insert-state-map (kbd "C-M-h") 'backward-word)
;; (define-key evil-insert-state-map (kbd "C-M-l") 'forward-word)

;; (define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)
;; (define-key evil-insert-state-map (kbd "C-a") 'move-beginning-of-line)
;; (evil-leader/set-key "C-d" 'er/expand-region)

;; Fix for bug in development branch (from spacemacs issues)
;; (define-key evil-motion-state-map (kbd "C-i") 'evil-jump-forward)

;; (spacemacs/set-leader-keys "SPC" 'avy-goto-char-timer)

;; suppresses warning about path variable on start-up.
;; (setq exec-path-from-shell-arguments '("-l"))

;; Wrap text in text modes
(add-hook 'text-mode-hook 'auto-fill-mode)

;; replace dired with deer
;; (add-hook 'dired-mode-hook 'deer)

;;; ### Layouts
;; restore windows in project layouts
(setq dotspacemacs-auto-resume-layouts t)

;;; ### Cider - Clojure Mode for Emacs

;; Disable smartparens highlighting everywhere which highlights matching parens
;; (with-eval-after-load 'smartparens
;;   (show-smartparens-global-mode -1))

;; Enable eldoc in Clojure buffers
;; (add-hook 'cider-mode-hook #'eldoc-mode)

;; hide special nrepl buffers from buffer switcher
(setq nrepl-hide-special-buffers t)

;; Prevent the auto-display of the REPL buffer in a separate window after connection
;; (setq cider-repl-pop-to-buffer-on-connect t)

;; Show the error buffer except when working in the repl:
(setq cider-show-error-buffer 'except-in-repl)

;; Don't auto-select the error buffer when it's displayed:
(setq cider-auto-select-error-buffer nil)

;; To auto-select the error buffer when it's displayed:
;; (setq cider-auto-select-error-buffer t)

;; Syntax highlight cider overlays
(setq cider-overlays-use-font-lock t)

;; To make the REPL history wrap around when its end is reached:
(setq cider-repl-wrap-history t)

;; To adjust the maximum number of items kept in the REPL history:
;; (setq cider-repl-history-size 1000) ; the default is 500

;; To store the REPL history in a file:
;; (setq cider-repl-history-file "~/.emacs.d/personal/nrepl-history")

(setq cider-cljs-lein-repl
      "(do (require 'figwheel-sidecar.repl-api)
(figwheel-sidecar.repl-api/start-figwheel!)
(figwheel-sidecar.repl-api/cljs-repl))")

;; Grab symbol at point for cider lookups
(setq cider-prompt-for-symbol t)

;; Get Cider to search clojuredocs web page
(defconst cider-clojuredocs-url "http://clojuredocs.org/")

(defun cider-clojuredocs-url (name ns)
  "Generate a clojuredocs search url from NAME, NS."
  (let ((base-url cider-clojuredocs-url))
    (when (and name ns)
      (concat base-url ns "/" name))))

(defun cider-clojuredocs-web-lookup (symbol)
  "Open the clojuredocs documentation for SYMBOL in a web browser."
  (if-let ((var-info (cider-var-info symbol)))
      (let ((name (nrepl-dict-get var-info "name"))
            (ns (nrepl-dict-get var-info "ns")))
        (browse-url (cider-clojuredocs-url name ns)))
    (error "Symbol %s not resolved" symbol)))

;;;###autoload
(defun cider-clojuredocs-web (&optional arg)
  "Open clojuredocs documentation in the default web browser.
Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'.  With prefix arg ARG, does the
opposite of what that option dictates."
  (interactive "P")
  (funcall (cider-prompt-for-symbol-function arg)
           "Clojuredocs doc for"
           #'cider-clojuredocs-web-lookup))

;; Add bindings for clojuredocs lookup
(with-eval-after-load 'cider
  (dolist (m '(clojure-mode
               clojurec-mode
               clojurescript-mode
               clojurex-mode
               cider-repl-mode
               cider-clojure-interaction-mode))
    (spacemacs/set-leader-keys-for-major-mode m
      "hw" 'cider-clojuredocs-web)))

;; Enable camelCase filename support
(add-hook 'cider-repl-mode-hook 'subword-mode)

;; Change bindings for the evil lisp state.
(define-key evil-lisp-state-map "f" (evil-lisp-state-enter-command sp-down-sexp))

;; This may speed up emacs rendering slightly
(setq redisplay-dont-pause t)

;; Org Mode Configuration
;; Spacemacs Org uses an org mode that is not shipped with emacs so we need to
;; wait until org is loaded before running any configs.
(with-eval-after-load 'org
  (setq org-startup-indented 1)
  (setq org-agenda-files '( "~/Dropbox/org" ))
  (setq org-directory "~/Dropbox/org" )
  (setq org-default-notes-file (concat org-directory "/organizer.org"))
  (setq org-agenda-include-diary t)
  (setq org-todo-keywords '("TODO" "STARTED" "WAITING" "DONE"))
  (setq org-agenda-include-all-todo t)
)

;; Deft Config
(setq deft-directory "~/Dropbox/org")
(setq deft-extension "org")
(setq deft-text-mode 'org-mode)
(setq deft-use-filename-as-title t)
(setq deft-auto-save-interval 0)

;; Start the emacs server
;; This may be unnecessary - Spacemacs starts a server
;; (server-start)

;; Make emacs scrolling less jumpy
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1))) ;; two lines at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(cider-cljs-lein-repl
   "(do (require 'weasel.repl.websocket) (cemerick.piggieback/cljs-repl (weasel.repl.websocket/repl-env :ip \"127.0.0.1\" :port 9001)))")
 '(evil-want-Y-yank-to-eol t)
 '(exec-path-from-shell-check-startup-files nil)
 '(org-agenda-files
   (quote
    (lispyville evil-lispy lispy zoutline swiper ivy command-log-mode hide-comnt ranger pug-mode goto-chg diminish seq yapfify py-isort ox-gfm osx-dictionary dumb-jump undo-tree powerline alert log4e gntp parent-mode gh marshal logito pcache ht flx magit-popup git-commit with-editor smartparens iedit web-completion-data pos-tip hydra inflections edn multiple-cursors paredit peg eval-sexp-fu spinner queue pkg-info clojure-mode epl yasnippet packed pythonic f avy async auto-complete popup bind-map projectile xterm-color ws-butler uuidgen restart-emacs railscasts-theme py-yapf persp-mode orgit org org-projectile org-download omtose-phellack-theme mwim monokai-theme majapahit-theme lorem-ipsum live-py-mode link-hint hl-todo help-fns+ github-search github-clone git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter flyspell-correct-helm flyspell-correct farmhouse-theme eyebrowse evil-visual-mark-mode evil-unimpaired evil-magit evil-indent-plus evil-ediff eshell-z dracula-theme darkokai-theme column-enforce-mode clojure-snippets bracketed-paste badwolf-theme ace-jump-helm-line markdown-mode flycheck cider company highlight anzu request helm gitignore-mode helm-core magit evil package-build bind-key s dash zonokai-theme zenburn-theme zen-and-art-theme web-mode underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stekene-theme spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme reveal-in-osx-finder pyvenv pytest pyenv-mode purple-haze-theme professional-theme planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme pbcopy pastels-on-dark-theme osx-trash organic-green-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme naquadah-theme mustang-theme multi-term monochrome-theme molokai-theme moe-theme minimal-theme material-theme magit-gh-pulls lush-theme light-soap-theme less-css-mode launchctl jazz-theme jade-mode ir-black-theme inkpot-theme hy-mode heroku-theme hemisu-theme helm-pydoc helm-flyspell helm-css-scss hc-zenburn-theme haml-mode gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme github-browse-file git-link gist gandalf-theme flatui-theme flatland-theme firebelly-theme espresso-theme eshell-prompt-extras esh-help erc-yt erc-view-log erc-terminal-notifier erc-social-graph erc-image erc-hl-nicks emmet-mode django-theme darktooth-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme company-web company-anaconda colorsarenice-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme apropospriate-theme anti-zenburn-theme anaconda-mode ample-zen-theme ample-theme alect-themes afternoon-theme jbeans-theme window-numbering which-key volatile-highlights vi-tilde-fringe use-package toc-org spray spacemacs-theme spaceline smooth-scrolling smeargle rainbow-delimiters quelpa popwin pcre2el paradox page-break-lines org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets open-junk-file neotree move-text mmm-mode markdown-toc magit-gitflow macrostep linum-relative leuven-theme info+ indent-guide ido-vertical-mode hungry-delete htmlize highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger gh-md flycheck-pos-tip flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-jumper evil-indent-textobject evil-iedit-state evil-exchange evil-escape evil-args evil-anzu elisp-slime-nav diff-hl define-word company-statistics company-quickhelp clj-refactor clean-aindent-mode cider-eval-sexp-fu buffer-move auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile align-cljlet aggressive-indent adaptive-wrap ace-window ace-link ac-ispell)))
    ("~/Dropbox/org/TODO.org"
     #("~/Dropbox/org/organizer.org" 2 5
       (face flx-highlight-face)
       10 13
       (face flx-highlight-face)))))
 '(rcirc-server-alist (quote (("irc.freenode.net" :channels ("#clojure"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sp-show-pair-match-face ((t (:underline "Blue")))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(sp-show-pair-match-face ((t (:underline "dark blue")))))
