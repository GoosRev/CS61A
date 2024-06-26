(define (ascending? s) 
    'YOUR-CODE-HERE
    (if (or (null? s)
            (null? (cdr s)))
        #t
        (and (<= (car s) (car (cdr s)))
        (ascending? (cdr s)))
    )
)

(define (my-filter pred s) 
    'YOUR-CODE-HERE
    (cond
        ((null? s) `())
        ((pred (car s)) (cons (car s) (my-filter pred (cdr s))))
        (else (my-filter pred (cdr s)))
    )
)

(define (interleave lst1 lst2) 
    'YOUR-CODE-HERE
    (if
        (or(null? lst1) (null? lst2)) (append lst1 lst2)
        (cons (car lst1) 
                (cons(car lst2)
                (interleave (cdr lst1) (cdr lst2))))
    )
)

(define (no-repeats s) 
    'YOUR-CODE-HERE
    (if (null? s) s
        (cons (car s)
            (no-repeats (filter (lambda (x) (not (= x (car s)))) (cdr s))))
    )
)
