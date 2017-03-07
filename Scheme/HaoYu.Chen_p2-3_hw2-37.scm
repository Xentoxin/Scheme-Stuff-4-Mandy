;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-37) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW37 -- Listomania
;2016-04-20
8"1. (allSame? L) returns true if all elements of list L are equal to each other, false otherwise. Assume atoms numeric. equals?/equal? primitive disallowed.
e.g."
(define equal (lambda (L)
                (cond 
                      ((null? (cdr L)) #t)
                      ((null? (car L)) #t)
                      ((= (car L) (car (cdr L))) (equal (cdr L)))
                      (else #f))))
(define K '( 1 2 3 34 5 ))
(define M '(1 1 1 1 1 ))
(define I '( 1 1 1 1 1 2 ))
(equal K); #f
(equal M); #t
(equal I); #f
(newline)
"2. (doublify L) returns list L, which may contain sublists, with every atom doubled. Assume L contains only numeric atoms."

(define double (lambda (n)
                 (cond
                   ((null? n) '())
                   (else (cons (* 2 (car n)) (double (cdr n)))))))
(define Z '(2 3 5 6))
(double Z) ; '(4 6 10 12)
(define L '(4 6 323 14))
(double L) ; '(8 12 646 28)
(newline)
"3. (filterOdd L) returns list L without its odd atoms. Assumes L is comprised solely of numeric atoms. L may contain sublists"

(define filterOdd (lambda (L)
                 (cond
                   ((null? L) '())
                   ((odd? (car L)) (filterOdd (cdr L)))
                   (else (cons (car L) (filterOdd (cdr L)))))))
(define Y '(2 3 5 6))
(filterOdd Y) ; '( 2 6)
(define C '(4 6 323 14))
(filterOdd C) ; '(4 6 14)