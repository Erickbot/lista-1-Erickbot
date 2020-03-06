#lang racket

;; exercicio 1.2
;; Ver em https://web.mit.edu/alexmv/6.037/sicp.pdf 

...

;; exercicio 1.3

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-max3 a b c)
  ...)

(provide sum-of-squares-max3)

