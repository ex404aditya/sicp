#lang sicp

;;we are just gonna use the version we learned that is O(n^2)
;;for efficiency we are just eliminating subtrees by applying conditions for each kind of coin

(define (square x) (* x x))

(define (count-change amount)
  (cc amount 5))


(define (cc amount kinds-of-coins)
  (set! counter (+ counter 1))
  (cond ((= kinds-of-coins 3) (+ (* (quotient amount 10)
				    (quotient amount 5))
				 (- (square (quotient amount 10)))
				 (quotient amount 5)
				 1))
	((= kinds-of-coins 2) (+ 1 (quotient amount 5)))
	((or (= kinds-of-coins 1) (= amount 0)) 1)
	((or (< amount 0) (= kinds-of-coins 0)) 0)
	(else (+ (cc amount
		     (- kinds-of-coins 1))
		 (cc (- amount
			(first-denomination kinds-of-coins))
		     kinds-of-coins)))))


(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
	((= kinds-of-coins 2) 5)
	((= kinds-of-coins 3) 10)
	((= kinds-of-coins 4) 25)
	((= kinds-of-coins 5) 50)))


(define counter 0)

(define (logn n x)
  (/ (log x) (log n)))

(define (estimation amount)
  (begin
    (set! counter 0)
    (newline)
    (letrec ((ways (count-change amount))
	     (c (logn amount counter)))
      (display ways) (display " ways to make change for ") 
      (display amount) (display " cents") (newline)
      (display "number of calls to cc: ") (display counter) (newline)
      (display "the c in O(n^c): ") (display c) (newline))))

(estimation 100)