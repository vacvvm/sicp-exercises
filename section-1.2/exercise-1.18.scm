;iterative version1
;Despite it's similarity with the recursive procedure in exe 1.17, This procedure eveloves an iterative process,
(define (fast-multiply a b)
  (cond
    ((= b 0)
     0)
    ((even? b)
     (fast-multiply (double a) (half b))))
    (else
     (+ a (fast-multiply a (- b 1))))))


;iterative version2

(define (fast-multiply-iter a b)
  (define (iter a b accum)
    (cond
      ((= b 0) accum)
      ((even? b)
       (iter (double a) (halve b) accum))
      (else
       (iter a (- b 1) (+ a accum)))))
  (iter a b 0))

