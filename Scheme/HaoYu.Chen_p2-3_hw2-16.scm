;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-16) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW16 -- Max Max
;2016-03-16
(define MAX2 (lambda ( A B )
               (if (> A B)
                   A
                   B)))
(MAX2 0 0) ;→ 0
(MAX2 3 2) ;→ 3
(MAX2 4 5) ;→ 5

(define MAX3 (lambda ( A B C )
               (MAX2 (MAX2 A B) C)))
(MAX3 1 1 1) ;→ 1
(MAX3 3 2 1) ;→ 3
(MAX3 4 6 5) ;→ 6
(MAX3 7 8 9) ;→ 9

(define MAX4 (lambda ( A B C D)
               (MAX2 (MAX3 A B C) D)))
(MAX4 1 1 1 1) ;→ 1
(MAX4 3 2 1 2) ;→ 3
(MAX4 4 6 5 3) ;→ 6
(MAX4 7 6 8 9) ;→ 9

(define MAX5 (lambda ( A B C D E)
               (MAX2 (MAX4 A B C D) E)))
(MAX5 1 2 3 4 5) ; 5
(MAX5 6 7 5 4 3) ; 7
(MAX5 7 8 5 3 9) ; 9 
(MAX5 8 5 4 0 11) ; 11

; easy homework this time
; just kept on resuing the MAX2 function along with the function before the one i was using eg if i was codeing MAX3 i would use MAX2