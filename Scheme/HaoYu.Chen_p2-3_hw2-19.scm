;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-19) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW19 -- Gotta Add'Em All
;2016-03-22
;1. (digits n) takes positive integer n and returns the number of digits in n.
(define digits (lambda (n)
              (if (< n 10)
                  1
                  ( + 1 (digits (/ n 10))))))
(digits 1234567890) ; 10
(digits 12345) ; 5
(digits 123456789) ; 9
(digits 123456) ; 6

;2. (sumOdd n) takes non-negative integer n, and returns the sum of the positive odd integers up to and including n. e.g.,
(define sumOdd
  (lambda (n)
    (if (<= n 0)
        0
        (if (even? n)
            (sumOdd (- n 1))
            (+ n (sumOdd (- n 2)))))))
(sumOdd 0) ;→ 0
(sumOdd 1) ;→ 1
(sumOdd 2) ;→ 1
(sumOdd 3) ;→ 4
(sumOdd 9) ;→ 25
(sumOdd 10) ;→ 25

;3. (sumOddDigits n) takes positive integer n and returns the sum of n’s odd digits.e.g.,
(define sumOddDigits
  (lambda (n)
    (if (= (digits n) 1)
        (if (even? n)
            0
            n)
        (if (= (digits (quotient n 10)) 1)
                (if (even? (quotient n 10))
                    (if (odd? (- n (* (quotient n 10) 10)))
                        (- n (* (quotient n 10) 10))
                        0)
                    (if (odd? (- n (* (quotient n 10) 10)))
                        (+ (- n (* (quotient n 10) 10)) (quotient n 10))
                        (quotient n 10)))
                (sumOddDigits (quotient n 10))))))
                
(sumOddDigits 0) ;→ 0
(sumOddDigits 4) ;→ 0
(sumOddDigits 3) ;→ 3
(sumOddDigits 1984) ;→ 10
(sumOddDigits 492067) ;→ 16