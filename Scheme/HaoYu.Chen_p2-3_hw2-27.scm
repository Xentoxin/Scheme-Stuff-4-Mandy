;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-27) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW27 Heads vs Tails
;2016-04-05
1. (odder n) returns n without its even digits. Assumes n is a non-negative integer.
e.g.,
(odder 0) → 0
(odder 7) → 7
(odder 125) → 15
(odder 123456) → 135

; 2. (myMultiplyA x y) takes non-negative integers x and y, and returns their product -- without using *, /, quotient or remainder. Employs deferred operations.
;e.g.,
(define myMultiplyA (lambda (a b)
              (cond ((= b 0) 0)
                    ((= a 0) 0)
                    (else (+ a (myMultiplyA a (- b 1)))))))
(myMultiplyA 5 3)
(myMultiplyA 1 3)
(myMultiplyA 10 2)

;3. (myMultiplyB x y) takes non-negative integers x and y, and returns their product -- without using *, /, quotient or remainder. Generates an iterative process.
;e.g.,

(define (multiply a b)
  (cond ((= b 0) 0)
        ((= a 0) 0)
        (else (+ a (myMultiplyA a (- b 1))))))
(define myMultiplyB (lambda (a b)
  (multiply a b)))
(myMultiplyB 5 3)
(myMultiplyB 1 3)
(myMultiplyB 10 2)

;the last two work. i have no idea how to do the first one