#lang scheme

; returns #t if the symbol var occurs free in exp, otherwise returns #f
(define occurs-free?
    (lambda (var exp)
        (cond
            ((symbol? exp) (eqv? var exp))
            ((eqv? (car exp) 'lambda)
             (and
                 (not (eqv? var (car (cadr exp))))
                 (occurs-free? var (caddr exp))
             )
            )
            (else
                (or
                    (occurs-free? var (car exp))
                    (occurs-free? var (cadr exp))
                )
            )
        )
    )
)
