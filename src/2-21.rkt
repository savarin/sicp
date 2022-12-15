#lang racket

(define (square x)
  (* x x ))

(define (square-list-recursive items)
  (if (null? items)
      null
      (cons (square (car items)) (square-list-recursive (cdr items)))))

(define (square-list-map items)
  (map square items))
