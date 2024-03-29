;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(setq user-full-name "Wang Jian"
      user-mail-address "herewj@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.


;; 个人配置
;; org mode图片
;; (setq org-image-actual-width '(300))       ;; Fallback to width 300
;; if there is a #+ATTR.*: width="200", resize to 200, otherwise resize to 400
;; #+ATTR_ORG: :width 600px
(setq org-image-actual-width '(400))
;; (setq org-image-actual-width (/ (display-pixel-width) 5))

(defun my-org-screenshot ()
  "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
  (interactive)
  (org-display-inline-images)
  (setq filename
        (concat
         (make-temp-name
          (concat (file-name-nondirectory (buffer-file-name))
                  "_imgs/"
                  (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
  (unless (file-exists-p (file-name-directory filename))
    (make-directory (file-name-directory filename)))
                                        ; take screenshot
  (if (eq system-type 'darwin)
      (call-process "screencapture" nil nil nil "-i" filename))
  (if (eq system-type 'gnu/linux)
      (call-process "import" nil nil nil filename))
                                        ; insert into file if correctly taken
  (if (file-exists-p filename)
      (insert (concat "[[file:" filename "]]")))
  (org-display-inline-images))


;; 字体配置https://emacs-china.org/t/doom-emacs/9628
(defun +my/better-font()
  (interactive)
  ;; english font
  (if (display-graphic-p)
      (progn
        (set-face-attribute 'default nil :font (format "%s:pixelsize=%d" "FiraCode NF" 15)) ;; 11 13 17 19 23
        ;; chinese font
        (dolist (charset '(kana han symbol cjk-misc bopomofo))
          (set-fontset-font (frame-parameter nil 'font)
                            charset
                            (font-spec :family "Microsoft YaHei")))) ;; 14 16 20 22 28
                            ;;(font-spec :family "Sarasa Mono SC")))) ;; 14 16 20 22 28
    ))

(defun +my|init-font(frame)
  (with-selected-frame frame
    (if (display-graphic-p)
        (+my/better-font))))

(if (and (fboundp 'daemonp) (daemonp))
    (add-hook 'after-make-frame-functions #'+my|init-font)
  (+my/better-font))

;; evil 输入法贴换https://github.com/ngzh/evil-fcitx.el
(add-to-list 'load-path "/home/scrutiny/.doom.d/plug/evil-fcitx.el/")
(add-to-list 'load-path "/home/scrutiny/.doom.d/plug/")
(require 'evil-fcitx)
(require 'ranger)
(map! (:leader ;;加上:leader就是指SPC开头
        (:desc "Ranger" :g "r" #'ranger) ;;全局快捷键以:g指定，这个快捷键是SPC a

   ;;    (:after org
   ;;      (:map org-mode-map "C-c o" #'org-pomodoro)) ;;这是某个map下的快捷键，没有leader的。
   ;;    (:after org-agenda
   ;;      (:map org-agenda-mode-map "C-c o" #'org-pomodoro))

   ;; (:map (markdown-mode-map org-mode-map)
   ;;        :localleader ;;某个map下映射SPC前缀的快捷键，用:localleader就代表是SPC m开头
   ;;        :n "v" #'grip-mode) ;;这个最终的快捷键是SPC m v
))

;; auto-save
;; (require 'auto-save)
;; (auto-save-enable)              ;; 开启自动保存功能
;; (setq auto-save-slient t)       ;; 自动保存的时候静悄悄的， 不要打扰我

;; auto-save
(auto-save-visited-mode 1)

(add-hook 'org-mode-hook
          (lambda()
            (setq word-wrap nil))) 

(defun refill-paragraphs-to-be-one-line ()
  "fill individual paragraphs with large fill column"
  (interactive)
  (let ((fill-column 100000))
    (fill-individual-paragraphs (point-min) (point-max))))

;; (setq-default TeX-engine 'xelatex)
;; 在org开头添加，导出pdf
;; #+LATEX_HEADER: \usepackage{ctex}
;; #+LATEX_COMPILER: xelatex
(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                              "xelatex -interaction nonstopmode %f"))
;; (setq org-latex-default-packages-alist
;;      (remove '("AUTO" "inputenc" t) org-latex-default-packages-alist))

;; 拼写检查
;; 1. hook flyspell into org-mode
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'flyspell-buffer)

;; 2. ignore message flags
(setq flyspell-issue-message-flag nil)

;; 3. ignore tex commands
(add-hook 'org-mode-hook (lambda () (setq ispell-parser 'tex)))
(defun flyspell-ignore-tex ()
  (interactive)
  (set (make-variable-buffer-local 'ispell-parser) 'tex))
(add-hook 'org-mode-hook 'flyspell-ignore-tex)
