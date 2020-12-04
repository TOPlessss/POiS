#lang racket
(display "\nВариант 2\n")
(display " \n")
(define (revAndSum lst)
  (if ( null? lst)
      lst
      (append (reverse lst) (revAndSum (cdr lst)))))
(revAndSum '(1 2 3 4 5 6))

(display "\nВариант 8\n")
(display " \n")
(define (recur lst num)
  (if (= 0 num)
      (car (reverse lst))
      (recur (reverse (cdr (reverse lst))) (- num 1 ))
      )
 )
(recur '(1 2 3 4 5 6 7 8 9 10) 0)
(recur '(1 2 3 4 5 6 7 8 9 10) 1)
(recur '(1 2 3 4 5 6 7 8 9 10) 2)

(display "\nВариант 19\n")
(display " \n")
(define myList3 (list 1 2 5 3 4))
(define (checkIfSort lst)
  (if (null? (cdr lst))
    true
    (if (> (car lst) (second lst))
        false
        (checkIfSort (cdr lst))
    )
  )
)
(display (checkIfSort myList3))