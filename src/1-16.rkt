#lang racket

(define (fast-expt b n)
  (define (iter b n result)
      (cond ((= n 0) result)
        ((even? n) (iter (* b b) (/ n 2) result))
        (else (iter b (- n 1) (* b result)))))

  (iter b n 1))
