;;; sesterl-mode.el --- A major mode for editing Sesterl programs.  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Takashi SUWA

;; Author: Takashi SUWA <bd.gfngfn[at]gmail.com>
;; Keywords: languages

;;; Commentary:

;;; Code:

(defgroup sesterl nil
  "Sesterl"
  :prefix "sesterl-"
  :group 'languages)

(defface sesterl-tag-face
  '((t (:foreground "#88ffaa")))
  "tags")

(defface sesterl-type-variable-face
  '((t (:foreground "#ff88dd")))
  "type variables")

(defface sesterl-uppercase-identifier-face
  '((t (:foreground "#aaffff")))
  "uppercase identifier")

(define-generic-mode sesterl-mode
  nil
  '("let" "rec" "and" "in" "fun"
    "if" "then" "else" "true" "false"
    "act" "do" "receive" "end" "case" "of"
    "val" "type" "module" "struct" "signature" "sig" "with"
    "external" "include" "import" "freeze" "pack" "unpack" "assert" "open")
  '(("\\(\\(?:\\?\\|\\-\\)[a-z0-9_]+\\)\\>"
     (1 'sesterl-tag-face t))
    ("\\([A-Z][A-Za-z0-9_]+\\)\\>"
     (1 'sesterl-uppercase-identifier-face t))
    ("\\(\\$[a-z0-9_]+\\)\\>"
     (1 'sesterl-type-variable-face t)))
  nil
  nil
  "A major mode for editing Sesterl programs.")


(provide 'sesterl-mode)
;;; sesterl-mode.el ends here
