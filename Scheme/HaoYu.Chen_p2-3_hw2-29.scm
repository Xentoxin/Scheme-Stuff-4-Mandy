;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname HaoYu.Chen_p2-3_hw2-29) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Hao Yu Chen
;IntroCS1 PD3
;HW29 To Bin or not to Bin
;2016-04-07
(define ToBin
  (lambda (n)
    (ToBinhelper n 0 0)))
(define ToBinhelper 
  (lambda (n counter ans) 
    (cond
      ((= n 0) ans)
      ((even? n)(ToBinhelper (quotient n 2)(+ counter 1)ans)) 
      (else (ToBinhelper (quotient n 2)(+ counter 1)(+(expt 10 counter) ans))))))


"HW#29 - to Bin or not to Bin! (labwork)
Due F 2016-04-08, 8:00am, EST.
Thinkers! I’m out of the building today. Enjoy the assignment below. 
Define the Scheme functions below. Hard-code output predictions after each function call. (i.e., “...should be <predicted output>”)
Save your file following the naming format above with extension .scm
Attach the file to your Google Classroom submission
Include heading and descriptive comments.
Turn in the assignment when done.
Bring hard copy to class.
1. (toBin n) which will take one non-negative integer argument and convert it to binary notation. 
Remember: what you're doing here is creating a decimal number, that looks like a binary number because it has only ones and zeros. 
Feel free to use one or more helper functions."
(ToBin 0) ;-> 0
(ToBin 1) ;-> 1
(ToBin 2) ;-> 10
(ToBin 6) ;-> 110
(ToBin 15) ;-> 1111
(ToBin 1000) ;-> 1111101000
