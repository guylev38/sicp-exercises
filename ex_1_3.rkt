#|
file: ex_1_3.rkt
brief: Soulution to exercise 1.3.
author: guylev38
|#

#lang sicp

(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (max a b) (cond ((> a b) a)
                        (else b)))
(define (min a b) (cond ((< a b)a)
                        (else b)))
(define (solve a b c) (sum-of-squares
                      (max
                       (min a b) c)
                      (max a b)))
(solve 3 6 7)