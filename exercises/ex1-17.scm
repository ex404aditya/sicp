#lang sicp 

(define (double x)
  (* x 2)
)

(define (halve x)
  (/ x 2)
)

(define (even? x)
  (= (modulo x 2) 0))


(define (log-multiply a b)
    (cond (= b 0) 0)
        ((even? b)
            (log-multiply (double a) (halve b)))
        (else
            (+ a (log-multiply a (- b 1)))))

(log-multiply 33 43)