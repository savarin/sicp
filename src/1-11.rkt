#lang racket

(define (f-recursive n)
  (if (< n 3)
    n
    (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))))

(define (f-iterative n)
  (define (iter n a b result)
    (if (= n 2)
      result
      (iter (- n 1) b result (+ result (* 2 b) (* 3 a)))))

  (if (< n 3)
    n
    (iter n 0 1 2)))
