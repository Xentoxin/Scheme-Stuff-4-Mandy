;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-10) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1( PD3
;HW10 -- True or False
;2016-03-07
(define space "                                       ")
;XOR T-T
(define XOR
  (lambda ( a b )
    (and
     (or a b)
     (not (and a b)))))
(XOR #t #t);#f
(XOR #t #f);#t
(XOR #f #t);#t
(XOR #f #f);#F

space
space

;bic
(define bic
  (lambda (a b)
    (or (
         and a b)
        (not (or a b)))))
(bic #t #t);#t
(bic #t #f);#f
(bic #f #t);#f
(bic #f #f);#t

space
space

;XOR3 T-T
(define XOR3
  ( lambda (a b c)
     (and (XOR (XOR a b) c)
          (not (and a b c)))))
(XOR3 #t #t #t);#f
(XOR3 #t #t #f);#f
(XOR3 #t #f #f);#t

;........................................................................
;welp there goes 2 hours of my life
;this was really hard
; used the xor function in the xor3 function because it can be used