#lang racket

(define (make-accumulator initial)
  (define (add value)
    (begin (set! initial (+ initial value))
           initial))

  add)
