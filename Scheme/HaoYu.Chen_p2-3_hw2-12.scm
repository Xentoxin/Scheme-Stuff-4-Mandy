;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW12 -- QuadSolver
;2016-03-09
(define Discriminant (lambda (a b c) (- (* b b) (* 4 a c))))
(define QuadSolver
  (lambda (a b c) (if
                                    (>= (Discriminant a b c) 0)
                                    (/
                                     (+
                                      (- 0 b) (Discriminant a b c))
                                     (* 2 a))
                                    "no real root")))
(QuadSolver 1 1 4) ;→ “no real roots”
(QuadSolver 1 4 4); → -2
;i dont know why the code did not work in class, perhaps it was because i used > in class and used >= for this homeowrk
