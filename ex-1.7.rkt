#lang racket

;; See http://community.schemewiki.org/?sicp-ex-1.7
;; Quando calculamos (sqrt x) para números muito pequenos, não conseguimos obter uma resposta próxima, já que o erro que colocamos inicialmente é maior do que o número que buscamos a raiz, o que implica
;; que a aposta nunca será melhorada, pois o progama retorna rapidamente a primeira (improve guess x) feita.
;; Para números muito grandes o progama não retornará resultados, isso ocorre porquê quanto maior a magnitude do número, maior é o intervalo entre dois números consecutivos, ou seja,
;; o intervalo será sempre maior que o erro que escolhemos, daí nunca obe




(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(define (square b)
  (* b b))

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.00001))

  (define (good-enough?2 guess x) 
  (< (/ (abs (- (square guess) x)) guess) (* guess 0.0001)))
  
  (define (improve guess)
    (average guess (/ x guess)))

  (define (sqrt-iter guess) 
     (if (good-enough?2 guess x) 
       guess 
       (sqrt-iter (improve guess)))) 

  (sqrt-iter 1.0))

(provide sqrt)
