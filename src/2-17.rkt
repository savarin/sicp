#lang racket

(define (list-pair s)
  (if (null? (cdr s))
      s
      (list-pair (cdr s))))
