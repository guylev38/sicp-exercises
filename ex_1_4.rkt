#|
file: ex_1_4.rkt
brief: Soulution to exercise 1.4.
author: guylev38
|#

#lang sicp

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

#|
The operator is evaluated to + when b is position and to - 
when b is negative. After evaluation the operator is applied to values
a and b.
Note: Since the abs(x) equals to abs(-x) then the procedure will always return a + |b|.
|#