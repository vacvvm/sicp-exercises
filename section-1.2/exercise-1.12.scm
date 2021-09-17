
(define (pascal n)
  (if (= n 1) (list 1)
      (append (list 1) (add-pairs (pascal (- n 1))))))

(define (add-pairs lst)       
  (if (= (length lst) 1) (cons (car lst) '())
      (cons (+ (car lst) (cadr lst)) (add-pairs (cdr lst)))))

;(pascal 4)
;(1 3 3 1)
