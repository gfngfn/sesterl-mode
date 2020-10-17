;;; sesterl-mode.el --- A major mode for editing Sesterl programs.  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Takashi SUWA

;; Author: Takashi SUWA <bd.gfngfn[at]gmail.com>
;; Keywords: languages

;;; Commentary:

;;; Code:

(define-generic-mode sesterl-mode
  nil
  '("let" "letrec" "andrec" "in" "fun"
    "if" "then" "else" "true" "false"
    "do" "receive" "when" "end" "case" "of"
    "val" "type" "module" "struct" "signature" "sig" "with"
    "external" "include" "require" "freeze")
  nil
  nil
  nil
  "A major mode for editing Sesterl programs.")

(provide 'sesterl-mode)
;;; sesterl-mode.el ends here
