#!/usr/local/bin/guile -s
!#

;; Exercise 1.12. The following pattern of numbers is called Pascal's triangle.

;;     1
;;    1 1
;;   1 2 1
;;  1 3 3 1
;; 1 4 6 4 1

;; The numbers at the edge of the triangle are all 1,
;; and each number inside the triangle is the sum of the two numbers above it.
;; Write a procedure that computes elements of Pascal's triangle by means of a recursive process.


(define (pascal-triangle level index)
    (if (or (= index 1) (= level index))
        1
        (+ (pascal-triangle (- level 1) (- index 1)) (pascal-triangle (- level 1) index))))

