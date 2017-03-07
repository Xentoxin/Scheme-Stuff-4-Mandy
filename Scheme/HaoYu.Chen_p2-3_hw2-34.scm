;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-34) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW34 -- Lists of Lists
;2016-04-16
"1. (numAtoms L) returns the number of atoms in list L, which may contain sublists."
(define numAtoms (lambda (L)
  (cond ((null? L) 0 )
        ((list? (car L)) (+ (numAtoms (car L)) (numAtoms (cdr L))))
        (else (+ 1 (numAtoms (cdr L)))))))
(numAtoms '() ) "...should be 0"
(numAtoms '(()) ) "...should be 0"
(numAtoms '(1 1) ) "...should be 2"
(numAtoms '(1 (1 1) 1) ) "...should be 4"
(numAtoms '(1 (1 (1 1)) 1) ) "...should be 5"
(newline)
"2. (sumElements L) returns the sum of the elements of list L, which may contain sublists. Assume atoms numeric."
(define sumElements (lambda (L)
                      (cond ((null? L) 0)
                            ((list? (car L)) (+ (sumElements (car L)) (sumElements (cdr L))))
                            (else (+ (car L) (sumElements (cdr L)))))))
                            
                            
(sumElements '() ) "...should be 0"
(sumElements '(2) ) "...should be 2"
(sumElements '(1 3 5) ) "...should be 9"
(sumElements '(1 (3 4) 5) ) "...should be 13"
(sumElements '(1 (3 (9 (15 5)) 4) 5) ) "...should be 42"

;first one was easy
;second one just needed to figure out how to add up the atoms on the list inside the list and add that to the atoms of the original list
