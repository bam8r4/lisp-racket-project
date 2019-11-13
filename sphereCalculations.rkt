#lang racket

;First argument is a parameter, 1 for surface are, 2 for volume. 
;We are defighing the value of pi
(define pi 3.1416)

;Here out is our function that will output either volume of a sphere
;or the area of a circle for the given input rad. 
(define (my_area par rad)
     (if(or (= par 1) (= par 2))
        (if (= 1 par)
            (* pi (* rad rad)) ;pi*radius^2 is equal to the area of a circle.
        (* 4/3 pi (* rad rad rad)) ;Volume is 4/3*pi*radius^3
        )

      ;We need to output an error if the input is not valid.
     (display "Not valid input. Put 1 or 2 as the first parameter")
))
  
        
