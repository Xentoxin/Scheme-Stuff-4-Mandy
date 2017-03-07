;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-23) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS PD3
;HW23 -- My Square Root
;(define betterGuess
;2016 - 03 - 29
(define betterGuess
  (lambda(x guess)
    (/ (+ (/ x guess) guess) 2)))

(define goodEnough? 
  (lambda(x guess)
    (> 0.01 (abs (- guess (/ x guess))))))
    
(define  sqrt-iter
  (lambda(x guess)
    (if (goodEnough? x guess)
        guess
        (sqrt-iter x (betterGuess x guess)))))

(define mysqrt
  (lambda(x)
    (sqrt-iter x 1)))

(mysqrt 2)
(mysqrt 9)
(mysqrt 10)

;the internet does not teach recursion well