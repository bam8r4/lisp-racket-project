#lang racket
;Creating a union between two lists.
;Function definition
(define (my_union a_list b_list)
    (cond
        ((null? a_list) b_list);If one list is null there is no reason to check for duplicates just return the other list.
        ((null? b_list) a_list);Same as above comment.
        
        ((> (car a_list) (car b_list)) ;Checking to see if the next element in a_list is greater than b_list and then cons the first element of b_list to the recursive funciton.  
          (cons (car b_list) (my_union a_list (cdr b_list))))
        
        ((> (car b_list) (car a_list)) ;Reverse of the previous comment.
          (cons (car a_list) (my_union b_list (cdr a_list))))
        
        (else  ;If one value of either a_list or b_list is not greater than the other. They must be equal so we call our function again without the first element. 
         (my_union (cdr a_list) b_list)

)))
