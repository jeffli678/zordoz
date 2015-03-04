#lang racket/base

(module+ main
  (require (only-in "private/zo-shell.rkt" init))
  (time
    (for ([name (directory-list "./bytecode")])
      (init (vector (format "./bytecode/~a" name) "lam"))))
)