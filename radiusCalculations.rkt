#lang racket

;First argument for the function is parameter. 1 for area of circe. 2 for volume  of sphere..
;We are defighing the value of pi
(define pi 3.1416)

;Here out is our function that will out put either volume of a sphere
;or the area of a circle for the given input rad. 
(define (my_area par rad)
    (cond
      ((= par 1) (* pi (* rad rad))) ;This is to calculate the area of a circle
      ((= par 2) (* pi (* rad rad rad) 4/3)) ;This is to calculate the volume of a sphere
      ((or(< par 1) (> par 2)) (display "That is not a valid input for the first parameter"))
    )
)
  

