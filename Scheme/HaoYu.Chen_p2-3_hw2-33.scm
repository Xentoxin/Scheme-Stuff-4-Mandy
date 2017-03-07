;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-33) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hao Yu CHen
;IntroCS PD3
;HW33 -- Basic List Work
;2016-04-14
"1. (myLength L) returns the number of items in list L."
(define K '( 1 2 3 4 5 56 90813258907 ))
(define helper (lambda (n counter number)
                 (cond ((null? n) number)
                       (else (helper (cdr n) (+ counter 1) (+ number 1))))))


(define myLength (lambda (n)
                   (helper n 0 0)))
(myLength K) ; should be 7


"2. (nth n L) returns the nth value of list L. Assumes n is a non-negative integer."
(define helper2 (lambda (list term counter ans)
                 (cond ((= term counter) ans)
                       ((> term (myLength list)) error)
                       (else (helper2 (cdr list) term (+ counter 1) (car list))))))
(define nth (lambda (term list)
              (helper2 list term 0 0)))
(nth 3 K) ; should be 3
(nth 99 K) ; should be error