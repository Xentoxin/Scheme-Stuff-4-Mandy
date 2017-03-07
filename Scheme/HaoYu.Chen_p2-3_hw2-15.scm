;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-15) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW15 -- Calendar
;2016-03-16
(define isLeapYr? (lambda (A)
               (if (= (remainder A 100) 0)
                   (if (= (remainder A 400) 0)
                       "True"
                       "False")
                   (if (= ( remainder A 4 ) 0)
                       "True"
                       "False"))))
(isLeapYr? 2000) ;→ true
(isLeapYr? 2004) ;→ true
(isLeapYr? 2008) ;→ true
(isLeapYr? 2009) ;→ false
(isLeapYr? 2100) ;→ false
(isLeapYr? 2104) ;→ true
(isLeapYr? 2200) ;→ false
(isLeapYr? 2300) ;→ false
(isLeapYr? 2400) ;→ true


(define daysInMonth (lambda (B A)
              
                (cond
                 ((= B 1) "31")
                 ((= B 3) "31")
                 ((= B 5) "31")
                 ((= B 7) "31")
                 ((= B 8) "31")
                 ((= B 10) "31")
                 ((= B 12) "31")
                 ((= B 4) "30")
                 ((= B 6) "30")
                 ((= B 9) "30")
                 ((= B 11) "30")
                 (else (if (= (remainder A 100) 0)
                   (if (= (remainder A 400) 0)
                       "29"
                       "28")
                   (if (= ( remainder A 4 ) 0)
                       "29"
                       "28"))))))
(daysInMonth 1 2010) ;→ 31
(daysInMonth 2 2011) ;→ 28
(daysInMonth 2 2000) ;→ 29
(daysInMonth 4 2011) ;→ 30

;this was a harder homework
; i used the skeleton function of isLeapYr? to get the days of febuary both leap year and non leap year
; for the days function i listed out every month except for febuary because it is the only month with interchanging days

                       