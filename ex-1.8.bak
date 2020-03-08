#lang racket

(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(define (square b)
  (* b b))

(define (cube-root x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.00001))

  (define (good-enough2? ...)
    ...)

  (define (improve guess)
    ...)

  (define (aux guess)
    ...)

  (aux 1.0))

(provide cube-root)