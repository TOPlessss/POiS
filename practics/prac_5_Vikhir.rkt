#lang racket
(display "Вариант 2\n")
(display "Введите список из пяти чисел\n")
(define list1 (list (read) (read) (read) (read) (read)))
(define (qsort a)
  (if (empty? a)
    a
    (let ([p (car a)])
      (let ([tail (cdr a)])
        (let ([lsr (filter (lambda (x) (< x p)) tail)])
          (let ([grt (filter (lambda (x) (>= x p)) tail)])
            (append (qsort lsr) (list p) (qsort grt))))))))

(display (format "~a\n\n" (qsort list1))) 