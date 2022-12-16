#lang racket

(define (g h)
  (let ((counter 0) (flag false))
    (define (dispatch m)
      (cond (flag 0)
            (else (eq? m 0) (set! flag true)
                  (h m))))

    dispatch))
