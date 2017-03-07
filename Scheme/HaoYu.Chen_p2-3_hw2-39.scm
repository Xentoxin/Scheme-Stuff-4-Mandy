;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-39) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW39 - List and Shout
;04-29-2016
(define K '( q 2 1 ( a 3 4 ) 7))
(define M '( 1  2 4 2 (d t 5 (s) 45 6) f))

"1. (sumNums L) returns the sum of the numeric atoms in L, which may contain sublists."
(define sumNums (lambda (L)
                      (cond ((null? L) 0)
                            ((list? (car L)) (+ (sumNums (car L)) (sumNums (cdr L))))
                            ((not (number? (car L))) (sumNums (cdr L)))
                            (else (+ (car L) (sumNums (cdr L)))))))
(sumNums K) ;17
(sumNums M) ;65
(newline)

(define N '( 1 1 1 1 1 1 1 ))
(define L '( 1 1 1 1 1  1 1 1 1 1 1 1))
(define O '( 2 2 2 2 2 2 2 2 ))
"2. (addLists P Q) returns a new list, wherein in each atom is the sum of its corresponding atoms in lists P and Q. Assume P and Q contain only numeric atoms, and no sublists."
(define addLists
  (lambda (P Q)
    (cond
      ((and (null? P) (null? Q)) '())
      ((or (null? P) (null? (car P))) (cons (car Q) (addLists '() (cdr Q))))
      ((or (null? Q) (null? (car Q))) (cons (car P) (addLists (cdr P) '())))
      (else (cons (+ (car P) (car Q)) (addLists (cdr P) (cdr Q)))))))

(addLists N L) ;(list 2 2 2 2 2 2 2 1 1 1 1 1)
(addLists N O) ;(list 3 3 3 3 3 3 3 2)
(addLists L O) ;(list 3 3 3 3 3 3 3 3 1 1 1 1)
(newline)

"3. (myRev L) returns list L with its elements reversed in order."
(define (myRev L)
  (if (null? L)
      '()
      (append (myRev (cdr L)) (list (car L)))
  )
)
(myRev K)
(myRev M)
(myRev O)

