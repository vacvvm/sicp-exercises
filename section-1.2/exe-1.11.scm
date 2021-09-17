;recursive version
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

;iterative version
(define (f n)
  (define (f-iter  counter  n-1 n-2 n-3) 
    (cond
      ((< n 3) n)
      ((> counter n) n-1)
      (else
      (f-iter (+ counter 1) (+ n-1 (* 2 n-2) (* 3 n-3 )) n-1 n-2))))
  (trace f-iter)
  (f-iter 3 2 1 0))

;test (f 10) 
;> 1892


