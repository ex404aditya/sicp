#lang sicp 

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

"so what this second line does is it shortens if else statement,
so it executes  (+ a b) if (> b 0) is true and (- a b) if its false"