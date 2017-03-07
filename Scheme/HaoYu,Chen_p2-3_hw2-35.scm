;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |HaoYu,Chen_p2-3_hw2-35|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW35 -- Juggling Lists
;2016 - 04 - 18
"1. (numTLAs Q) returns the number of top-level atoms in list Q, which may contain sublists."
(define L '( 1 2 ( a 3) (5 6 ) 7))
(define K '( 1 (a 4) 7))
(define numTLA (lambda (n)
                 (cond ((null? n) 0)
                       ((list? (car n)) (numTLA (cdr n)))
                       (else (+ 1 (numTLA (cdr n)))))))
(numTLA L) ; should be 3
(numTLA K) ; should be 2
(newline)

"2. (listsEqual? L M) returns true if lists L and M are equal, false otherwise. Assume L and M are comprised of only top-level atoms."
(define a '(1 2 3))
(define b '(1 2 3))
(define c '(1 3 2))
(define d '(1 2))
(define k '( 1 3))
(define x '())
(define y '())
(define listsEqual (lambda ( L M )
                     (cond ((not (equal? (length L) (length M))) #f)
                           ((and (null? L) (null? M)) #t)
                           ((= 1 (length L) (length M)) (equal? (car L) (car M)))
                           (else (listsEqual (cdr L) (cdr M))))))
(listsEqual a b) ;should be true
(listsEqual b c) ;should be false
(listsEqual k a) ;should be false
(listsEqual c d) ;should be false
(listsEqual x y) ;should be true