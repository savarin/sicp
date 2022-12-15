#lang racket

(define (for-each proc items)
  (cond ((null? items) null)
        ((null? (cdr items)) (proc (car items)))
        (else (proc (car items)) (for-each proc (cdr items)))))
