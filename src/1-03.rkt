#lang racket

(define (sum-squares-two-largest a b c)
  (cond ((and (>= a b) (>= c b)) (+ (* a a) (* c c)))
        ((and (>= b c) (>= a c)) (+ (* b b) (* a a)))
        ((and (>= c b) (>= b a)) (+ (* c c) (* b b)))))
