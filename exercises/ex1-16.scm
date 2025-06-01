#lang sicp

(define (fast-iter a b n)
  (cond ((= n 0) a)
        ((even? n)
         (fast-iter a (* b b) (/ n 2)))
        (else
         (fast-iter (* a b) b (- n 1)))))

(fast-iter 1 9 7)  ; Output: 40353607 (9^7)
