#lang sicp

(define (f-recursive n)
    (if n < 3)
    3
    (+ (f-recursive (- n 1))
        (* 2 (f-recursive (- n 2)))
        (* 3 (f-recursive (- n 3)))))


(define (f-iterative n)
  (define (f-loop n-1 n-2 n-3 nth)  ; current prev prev-prev position
    (if (= n nth)
        n-1
        (f-loop (+ n-1 (* 2 n-2) (* 3 n-3)) ; new current i.e. answer
                n-1
                n-2 
                (+ 1 nth))))
  (if (< n 3)
      n
      (f-loop 2 1 0 2)))    ; base case