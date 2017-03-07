;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-13) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW13 -- Grade Converter
;2016-03-10
(define gradeConv (lambda (g) 
                    (if (>= g 90)
                                  "A"
                                  (if (>= g 80)
                                      "B"
                                      (if (>= g 70)
                                          "C"
                                          (if (>= g 65)
                                              "D"
                                              "F"))))))
(gradeConv 35);should be F
(gradeConv 70);should be C
(gradeConv 100);should be A
; basically just had to set the range for each grade as an if function
