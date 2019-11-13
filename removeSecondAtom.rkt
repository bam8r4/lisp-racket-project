#lang racket
;program to remove the second value of a list.

(define (rem_second l) ;function definition
  (if (null? l) 
      null ;return null if the list is null
      (if (null? (cdr l)) ;Check to see if its null when the first element is removed.
          null 
      (cons (car l)(cdr (cdr l))) ;Take the first element and save it. Then con the list with the first two removed.
))) 
