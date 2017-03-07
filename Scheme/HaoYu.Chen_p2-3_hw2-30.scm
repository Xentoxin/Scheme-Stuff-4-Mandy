;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-30) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW30? Not To Bin
;2016-04-10
(define NotToBin
  (lambda (n)
    (NotToBinhelper n 0 0)))
(define NotToBinhelper 
  (lambda (n counter ans) 
    (cond
      ((= n 0) ans)
      ((even? n)(NotToBinhelper (quotient n 10)(+ counter 1)ans)) 
      (else (NotToBinhelper (quotient n 10)(+ counter 1)(+(expt 2 counter) ans))))))
(NotToBinhelper 1 0 0)
(NotToBinhelper 11 0 0)
(NotToBinhelper 111 0 0)
(NotToBinhelper 1110 0 0)
(NotToBinhelper 100 0 0)