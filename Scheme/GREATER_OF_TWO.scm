;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname GREATER_OF_TWO) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW9 -- Formulaic
;2016-03-05
(define space "                                 ")
; CartDist Distance between two points
(define CartDist
  (lambda (X1 Y1 X2 Y2)
    (abs (sqrt
          (+
           (expt (abs (- X1 X2)) 2) (expt (abs (- Y1 Y2)) 2))))))
(CartDist 0 0 0 0)
;should be 0
(CartDist 4 4 4 4)
;should be 0
(CartDist 0 0 3 4)
;should be 5

space
space

; Arithemetic Mean
(define ArithMean3
  (lambda (a b c)
    (/ (+ a b c) 3)))
(ArithMean3 0 0 0)
;should be 0
(ArithMean3 1 2 3)
;should be 2
(ArithMean3 5 -10 20)
;should be 5

space
space

; Harmonic Mean: recipricoal of the arithmetic means of the recipricolas
(define HarMean3
  (lambda (a b c)
    (/ 1 ( / (+ (/ 1 a) (/ 1 b) (/ 1 c)) 3))))
(HarMean3 5 5 5)
;should be 5
(HarMean3 3 6 18)
;should be 5.4
(HarMean3 5 -10 20)
;should be 20

space
space

; Greater of two
(define MAX2
  (lambda (a b)
    (/
     (+
      (sqrt (- (+ (* a a) (* b b)) (* a b 2) ))
        a
        b)
     2)))
(MAX2 4 4)
;should be 4
(MAX2 4 7)
;should be 7
(MAX2 9 8)
;should be 9

; so. everything up to the challenge was easy.
;the difficulty of the challenge was figuring our how to get to the larger number which required like an hour of geuss and check
; then the coding to get the bigger of two was confusing as well because there are lots of operations and parentheses
