#lang racket

(define (make-monitored f)
  (let ((counter 0))
    (define how-many-calls? counter)
    (define reset-count
      (set! counter 0))
    (define (dispatch m)
      (cond ((eq? m 'how-many-calls?) how-many-calls?)
            ((eq? m 'reset-count) reset-count)
            (else
              (begin (set! counter (+ counter 1))
                     (f m)))))

    dispatch))
