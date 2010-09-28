#lang scheme
(require eopl/eopl)

; removes the first occurence of s in the list of symbols los
(define remove-first
  (lambda (s los)
    (if (null? los)
      '()
      (if (eqv? (car los) s)
        (cdr los)
        (cons (car los) (remove-first s (cdr los)))))))
