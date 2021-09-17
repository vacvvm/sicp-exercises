(define (ways-to-change amount denom-list)
  (cond
    ((= amount 0) 1)
    ((or (< amount 0)
         (null? denom-list)
         ) 0)
    (else
     (let ((first-kind (car denom-list))
           (rest-of-the-kinds (cdr denom-list)))
           (+ (ways-to-change amount rest-of-the-kinds)
              (ways-to-change (- amount first-kind) denom-list))))))

; test (ways-to-change 100 (list 1 5 10 20 50))
