;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-41) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define nouns '(dog cat Mark Jacopo))
(define verbs '(runs eats falls poops))
(define adjectives '(cool rich disgusting fast)) 
(define adverbs '(quickly painfully carefully)) 
(define articles '(a an the)) 

(define nth
  (lambda (n L)
    (cond
      ((= n 0) (car L))
      (else (nth (- n 1) (cdr L))))))
(define random-element
  (lambda (L)
    (nth (random (length L)) L)))
(define one (lambda (L) (random-element L)))
(define Noun (one nouns))
(define Verb (one verbs))
(define Adjective (one adjectives))
(define Adverbs (one adverbs))
(define Articles (one articles))

(define noun-phrase (lambda () 
                      (append ((display (Articles)) (display (Adjective)) (display (list (Noun)))))))
(define verb-phrase (lambda () 
                      (append (display (list (Verb))) (display (noun-phrase) (Adverbs)))))

(define sentence (lambda () 
                   (append (noun-phrase) (verb-phrase)))) 

(sentence)