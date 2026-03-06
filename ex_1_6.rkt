#|
file: ex_1_6.rkt
brief: Solution for exercise 1.6.
author: guylev38
|#

#lang sicp 

#| 
Square Root algorithm:
1. Start with a guess G for value of sqrt(X).
2. Check if G is good enough.
    2.1. Define a tolerance T = 0.001 (From the book).
    2.2. Check if G^2 differs from X by less then T.
3. If not, improve continously by averaging G with X/G.
|#

#| Original Implementation |#

(define T 0.001)
(define (abs x)
    ((if (> x 0) + -) x))
(define (square x) (* x x))
(define (good-enough? g x)
    (< (abs (- (square g) x)) T))
(define (average x y) 
    (/ (+ x y) 2))
(define (improve g x) 
    (average g (/ x g)))
(define (sqrt-iter g x)
    (if (good-enough? g x)
        g
        (sqrt-iter (improve g x) x)))
(define (sqrt x) 
    (sqrt-iter 1.0 x))

(sqrt 9)

#| Using Alyssa P. Hacker's new if |#

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))
(define (new-sqrt-iter g x)
    (new-if (good-enough? g x)
        g
        (new-sqrt-iter (improve g x) x)))
(define (new-sqrt x) 
    (new-sqrt-iter 1.0 x))

(new-sqrt 9)

#|
Alyssa's code gets stuck in an infinite loop because new-if is defined as a standard procedure
thus making the interpreter evaluate all of the expressions regardless of whether the predicate is
true or false.
|#