#lang racket

(define (repeated f n)
  (define (iter a result)
    (if (= a 1)
        result
        (iter (- a 1) (compose f result))))

  (iter n f))
