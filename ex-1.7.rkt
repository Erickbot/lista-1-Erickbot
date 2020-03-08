#lang racket

;; See http://community.schemewiki.org/?sicp-ex-1.7
;; Quando calculamos (sqrt x) para números muito pequenos, não conseguimos obter uma resposta próxima, já que o erro que colocamos inicialmente é maior do que o número que buscamos a raiz, o que implica
;; que a aposta nunca será melhorada, pois o progama retorna rapidamente a primeira (improve guess x) feita.
;; Para números muito grandes o progama não retornará resultados, isso ocorre porquê quanto maior a magnitude do número, maior é o intervalo entre dois números consecutivos, ou seja,
;; o intervalo será sempre maior que o erro que escolhemos, daí nunca obteremos um retorno.

(define (square x) (* x x))

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (if (= x 0) 0
  (sqrt-iter 1.0 x)))