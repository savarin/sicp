#lang racket

(define (accumulate-iterative combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))))

    (iter a null-value))

(define (product term a next b)
  (accumulate-iterative * 1 term a next b))

(define (factorial n)
  (accumulate * 1 (lambda (x) x) 1 (lambda (x) (+ x 1)) n))

(define (accumulate-recursive combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate-recursive combiner null-value term (next a) next b))))
