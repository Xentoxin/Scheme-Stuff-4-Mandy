;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-36) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
"0. (buildList n c) builds a list of n of the same elements, c."
(define buildList (lambda (n c)
(cond
((= n 0) '())
(else (cons c (buildList (- n 1) c))))))
(buildList 0 'a) "should be ‘()"
(buildList 1 'a) "should be ‘(a)"
(buildList 10 'a) "should be ‘(a a a a a a a a a a)"
(newline)
"1. (removeAll a L) returns the list L without any occurrences of atom a."
(define removeAll
  (lambda (a L)
    (cond
      ((null? L) '())
      ((= a (car L)) (removeAll a (cdr L)))
      (else (cons (car L) (removeAll a (cdr L)))))))
(removeAll 3 '() ) "...should be ()"
(removeAll 1 '(1 2 3) ) "...should be (2 3)"
(removeAll 4 '(1 2 3) ) "...should be (1 2 3)"
(removeAll 4 '(1 4 2 4 3 4) ) "...should be (1 2 3)"
(removeAll 2 '( 1 2 3)) "...should be (1 3)"
(newline)
"2. (removenth n L) returns list L without its nth element. Assume n is an integer and -1 < n < (length L)."
(define removenth (lambda (n L)
                    (helper n L 0)))
(define helper (lambda (n L counter)
                 (cond
                   ((= n counter) (cdr L))
                 ((null? L) '())
                 (else(cons (car L) (helper n (cdr L)(+ 1 counter)))))))
(removenth 0 '(a b c) ) "...should be (b c)"
(removenth 1 '(a b c) ) "...should be (a c)"
(removenth 2 '(a b c) ) "...should be (a b)"
