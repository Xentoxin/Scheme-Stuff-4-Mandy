;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW11 -- Triples
;2016-03-08
(define isPythTriple? (lambda (S1 S2 S3)
                        (if (= (+ (* S1 S1) (* S2 S2)) (* S3 S3))
                           #t
                           #f)))
                         
(isPythTriple? 3 4 5) ;→ #t
(isPythTriple? 3 4 6) ;→ #f
(isPythTriple? 65 72 97) ;→ #t
;EZ
;used the pythagorean theorem, if a^2 + b^2 = c^2, then it is a pythagorean triple

