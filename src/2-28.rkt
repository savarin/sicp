#lang racket

(define (fringe s)
  (cond ((null? s) null)
        ((list? (car s)) (append (fringe (car s)) (fringe (cdr s))))
        (else (cons (car s) (fringe (cdr s))))))
