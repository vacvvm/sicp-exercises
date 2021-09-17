(define halve
  (lambda (x) (/ x 2)))

(define square
  (lambda (x) (* x x)))

(define (fast-exponent-iter a b)
  (define (iter a b accum)
    (cond
      ((= b 0) accum)
      ((even? b)
       (iter (square a) (halve b)  accum))
      (else
       (iter a (- b 1) (* a accum)))))
  (iter a b 1))


