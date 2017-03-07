;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_P2-3_HW2-8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW8 -- FunFunFunctions
;2016-03-03
(define foo
  ( lambda (d)
     ( * 1 d )))
(foo 1)
(foo 0)
(foo 10)
(define areaCirc
  ( lambda (R)
          (* pi 1 )))
(areaCirc 1)
(areaCirc 3)
(areaCirc 5)
(define AreaCirc
  ( lambda (R)
     ( * pi R )))
(AreaCirc 1)
(AreaCirc 3)
(AreaCirc 5)
( define SumOfSquares
   ( lambda ( a b )
      ( + ( expt a 2 ) ( expt b 2 ) ) ) )
(SumOfSquares 0 0)
(SumOfSquares 1 2)
(SumOfSquares 4 5)
; so all the functions given to work on were done and went generally well.
; i got curious on how to do a function within a function so i did it below

( define FunctionInFunction
   ( lambda ( SumOfSquares areaCirc AreaCirc foo )
      ( / ( + SumOfSquares ( / areaCirc AreaCirc ) ) foo )))
(FunctionInFunction
 (SumOfSquares 0 0)
 (areaCirc 1)
 (AreaCirc 1)
 (foo 1))
; so for function in function i used define and named it FunctionInFunction
; then lambda
; then the arguments would be the arguments which were functions
; the functions for the arguments have to be defined before hand
; in order to make this easier to test, i made it so that the end result would be 1
; To actually use the FunctionInFunction, just list the functions/arguments are the function name
; each arguent has to be in its own parentheses with its own variables defined
; then i just closed it
; went as planned
; no real difficulties