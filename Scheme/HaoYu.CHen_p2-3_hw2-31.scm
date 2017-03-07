;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HaoYu.CHen_p2-3_hw2-31) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;Hw31 -- Towers of Hanoi Solver
;2016-04-12
(define showmove (lambda (s d)
                   (begin (display "Move a disc from")
                          (display s)
                          (display "to")
                          (display d)
                          (newline))))
(define hanoi (lambda (n s d t)
  (cond ((= n 1) (showmove s d))
        (else (begin (hanoi (- n 1) s t d)
                     (showmove s d)
                     (hanoi (- n 1) t d s))))))
(hanoi 1 'A 'B 'C) 
"Move a disc from A to B"
(hanoi 2 'A 'B 'C) 
"Move a disc from A to C
Move a disc from A to B
Move a disc from C to B"
(hanoi 2 'Empire 'State 'Building) 
"Move a disc from Empire to Building
Move a disc from Empire to State
Move a disc from Building to State"
