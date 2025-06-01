#lang sicp

(define (even? n)
  (= (remainder n 2) 0))

(define (double x) (* x 2))
(define (halve x) (/ x 2))

(define (log-mult a b c)
  (cond ((= b 0) c)
        ((even? b)
         (log-mult (double a) (halve b) c))
        (else
         (log-mult a (- b 1) (+ c a)))))


(log-mult 28 13 0)  

; Output: 364 
