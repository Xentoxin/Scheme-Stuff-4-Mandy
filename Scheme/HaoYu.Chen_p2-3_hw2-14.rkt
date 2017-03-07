;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-14) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW14 -- Now Better
;2016-03-15
(define gradeConv (lambda (g) 
                    (cond 
                      ((>= g 90) "A")
                      ((>= g 80) "B")
                      ((>= g 70) "C")
                      ((>= g 65) "D")
                      (else "F"))))
(gradeConv 75);should be C
(gradeConv 65);should be D
(gradeConv 100);should be A
(gradeConv 89.5);should be B
(gradeConv  64.5);should be F
;this was a weird one as i didnt realize that the if function was not needed within the conditional