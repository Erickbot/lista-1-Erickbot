#lang racket

(require "ex-1.2-3.rkt")
(require "ex-1.7.rkt")
(require "ex-1.8.rkt")

(define (abs x)
  (if (< x 0) (- x) x))

(define (next-to x y)
    (< (abs (- x y)) 0.1))

(define (test v1 op v2)

    (define (right v)
        (display "#ok -> given ")
        (displayln v))

    (define (error v)
        (display "#error -> given ")
        (displayln v))
    
    (if (op v1 v2)
        (right v1)
        (error v1)))


(display "\n1.2-3\n")

(display "(sum-of-squares-max3 4 5 6) ")
(test (sum-of-squares-max3 4 5 6) = 61)

(display "(sum-of-squares-max3 1 0 2) ")
(test (sum-of-squares-max3 1 0 2) = 5)

(display "(sum-of-squares-max3 3 8 3) ")
(test (sum-of-squares-max3 3 8 3) = 73)

(display "\n1.7\n")

(display "(sqrt 9) ")
(test (sqrt 9) next-to 3)

(display "(sqrt 6) ")
(test (sqrt 6) next-to 2.45)

(display "(sqrt 2) ")
(test (sqrt 2) next-to 1.414)

(display "\n1.8\n")

(display "(cube-root 8) ")
(test (cube-root 8) next-to 2)

(display "(cube-root 1) ")
(test (cube-root 1) next-to 1)

(display "(cube-root 3) ")
(test (cube-root 3) next-to 1.732)

(display "\n")
