;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-26) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define maxDigit
  (λ (n)
    (maxDigit-helper (abs n) 0)))
(define maxDigit-helper
  (λ (n max)
    (if (>= n 10)
        (if (> (remainder n 10) max)
            (maxDigit-helper (quotient n 10) (remainder n 10))
            (maxDigit-helper (quotient n 10) max))
        (if (> n max)
            n
            max))))
(maxDigit 11523) ; 5
(maxDigit 1) ;→ 1
(maxDigit 13) ;→ 3
(maxDigit 758) ;→ 8
(maxDigit 10476) ;→ 7
