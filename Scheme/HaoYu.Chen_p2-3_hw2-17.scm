;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-17) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW 17 -- Like a Dream Within A Dream..
;2016-03-17
(define fact (lambda (n)
               (if (= n 0)
                   1
                   (* n (fact (- n 1))))))
(fact 0)
(fact 1)
(fact 2)
(fact 3)
(fact 4)
(fact 5)
(fact 6)
(fact 10)
;I slept for a few hours and played a few games of league whilst thinking about the homeowrk.
; then i thought of this random code to see if it worked and it did
