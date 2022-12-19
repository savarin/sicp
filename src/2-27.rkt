#lang racket

(define (deep-reverse s)
  (cond ((null? s) s)
        ((list? (car s)) (append (deep-reverse (cdr s)) (cons (deep-reverse (car s)) null)))
        (else (append (deep-reverse (cdr s)) (cons (car s) null)))))
