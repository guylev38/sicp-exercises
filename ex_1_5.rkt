#|
file: ex_1_5.rkt
brief: Soulution to exercise 1.5.
author: guylev38
|#

#lang sicp

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))
(test 0 (p))

#|
APPLICATIVE ORDER
In a interpreter that uses applicative-order evaluation this
program will go into an inifinite loop since it's trying to evaluate p first.

NORMAL ORDER 
In a interpreter that uses normal-order evaluation the interpreter will start by evaluating test
and thus will evaluate the if statement and see that it's true and return 0.
By doing this the interpeter never tries to evaluate p and doesn't go into an infinite loop.
|#