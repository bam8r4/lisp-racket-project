#lang racket

;function definition
(define (my_delete v a_list) 
    (cond 
        ((empty? a_list) a_list) ;cleck to see if the list has anything it.
        ((eq? v (car a_list)) (my_delete v (cdr a_list))) ;deletes entire atom from the list given that the target atom is the first atom. 
        (else (cons (car a_list) (my_delete v (cdr a_list)))) ;deletes atom from entire list when the target atom is not the first atom. 
)) 

