;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-40) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Team Wildcats (Haoyu Chen, Gwyneth Gravador)
;IntroCS1 pd3
;HW40 -- Tsil
;2016-05-02
(define (myRev L)
  (if (null? L)
      '()
      (append (myRev (cdr L)) (list (car L)))
  )
)
;1. (expand n) takes non-negative integer n and returns a list of top-level atoms, each being a digit of n, in the same order they occur in n.
(define expand
  (lambda (n)
    (cond
      ((> 10 n) (cons n '()))
      (else (myRev (cons (remainder n 10) (myRev (expand (quotient n 10)))))))))
(expand 12345)
;2. (collapse L) takes list L, comprised solely of atomic top-level integers ranging from 0 to 9 inclusive, and returns an integer whose digits correspond to each element of L, in order.
(define collapse
  (lambda (L)
    (collapse-h (reverse L))))
(define collapse-h
  (lambda (L)
    (if (null? L) 0
      (+ (car L) (* 10 (collapse-h (cdr L)))))))
(collapse '(1 2 3 4 5))
;3. (flip n) accepts non-negative integer n and returns n with its digits reversed.
(define flip
  (lambda (n)
(collapse (myRev (expand n)))))
(flip 12345)