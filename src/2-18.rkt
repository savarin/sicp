#lang racket

(define (reverse s)
  (if (null? (cdr s))
      s
      (append (reverse (cdr s)) (cons (car s) null))))
