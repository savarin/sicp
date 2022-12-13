#lang racket

(define (product-iterative term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))

  (iter a 1))

(define (factorial n)
  (product-iterative (lambda (x) x) 1 (lambda (x) (+ x 1)) n))

(define pi
  (* 4.0
     (product-iterative (lambda(x) (/ (* (- x 1) (+ x 1)) (* x x))) 3 (lambda (x) (+ x 2)) 1000)))

(define (product-recursive term a next b)
  (if (> a b)
      0
      (* (term a)
         (product-recursive term (next a) next b))))
