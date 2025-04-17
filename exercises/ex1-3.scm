#lang sicp

(define (square x) (* x x))

(define (sumofsquare x y) (+ (square x) (square y)))

(define (select x y z)
    (cond ((and (<= x y) (<= x z)) (sumofsquare y z))
    ((and (<= y x) (<= y z)) (sumofsquare x z))
    (else (sumofsquare x y))))