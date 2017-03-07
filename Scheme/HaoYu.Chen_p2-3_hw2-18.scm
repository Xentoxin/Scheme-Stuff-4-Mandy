;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-18) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW18 -- Did you mean recursion?
;2016-03-21


;1. (fiction n) accomplishes a task similar to that of fact, but only includes every 3rd integer in the final product.
(define fiction (lambda (n)
                  (if (<= n 2)
                       (if (= n 0)
                           1
                           n)
                      (* n (fiction (- n 3))))))
(fiction 0) ;→ 1
(fiction 1) ;→ 1
(fiction 2) ;→ 2
(fiction 3) ;→ 3
(fiction 4) ;→ 4
(fiction 5) ;→ 10
(fiction 6) ;→ 18
(fiction 7) ;→ 28
(fiction 8) ;→ 80
;EZ

;2. (sumPtoQ p q) returns the sum of the integers from p to q, inclusive.
(define sum
  (lambda (p q)
    (if (= p q)
        p
       (-
        (/
         (*
         q
         (+ q 1))
         2)
        (/
         (*
          p
          (- p 1))
         2)))))
;start out with finding the sum of intergers from 1 to q
;then find out the sum of intergers from 1 to p
;assuming p<= q
; then subtract the sum of intergers from 1 to p from 1 to q
;hard
(sum 0 0) ;→ 0
(sum 0 3) ;→ 6
(sum 2 3) ;→ 5
(sum 3 3) ;→ 3
