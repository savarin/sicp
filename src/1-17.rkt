#lang racket

(define (mul a b)
  (define (iter b result)
    (if (= b 0)
      result
      (iter (- b 1) (+ a result))))

  (iter b 0))
