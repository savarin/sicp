#lang racket

(define (same-parity x . y)
  (let ((is-parity? (if (even? x) even? odd?)))
    (define (filter s)
      (cond ((null? s) null)
            ((is-parity? (car s)) (cons (car s) (filter (cdr s))))
            (else (filter (cdr s)))))

  (cons x (filter y))))
