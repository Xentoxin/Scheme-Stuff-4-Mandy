;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-24) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntoCS1 Pd3
;HW#24 - Make a Fibonacci friend!
;2016-03-31
(define fibnaive (lambda (n)
              (if (<= n 2)
                  1
                  (+ (fibnaive (- n 1))
                     (fibnaive (- n 2))))))
(fibnaive 1)
(fibnaive 2)
(fibnaive 3)
(fibnaive 4)
(fibnaive 5)
(fibnaive 6)
(fibnaive 7)
(fibnaive 8)

(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
(fib 6)
(fib 7)
(fib 8)
