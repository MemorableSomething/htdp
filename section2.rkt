;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname section2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (areaofdisk r) (* 3.14 (sqr r)))
(define (areaofring b s )  ( - (* 3 (sqr b))  (* 3 (sqr s))))
(define (fa-cel f)  (/ (- f 32) 1.8))

(define (tax total) (* total 0.1))
(define (netpay hrs) (- (* hrs 12) (tax  (* hrs 12) )))

(define (coincoin p n d q)  (+ (* p 1) (* n 5) (* d 10) (* q 25)))
(define (movieprofit guests) (- (* 5 guests) 20 (* 0.5 guests)))



;; Contract: people : number  ->  number
;; Purpose: to calculate number of audiences by ticket price
;; Example: (people 3) should produce 420
;; Definition: [refines the header]
(define (people price)  ( + 120 (* 15 (/ (- 5 price) 0.1))))
;; Tests:
(people 3) 
;; expected value
420

;; Contract: cost : number  ->  number
;; Purpose: to calculate cost by ticket price
;; Example: (cost 3) should produce 196.8
;; Definition: [refines the header]
(define (cost price)  (+ 180 (* 0.04 (people price))))
;; Tests:
(cost 3) 
;; expected value
196.8


;; Contract: revenue : number  ->  number
;; Purpose: to calculate revenue by ticket price
;; Example: (revenue 3) should produce 1260
;; Definition: [refines the header]
(define (revenue price) (* price (people price)))
;; Tests:
(revenue 3) 
;; expected value
1260


;; Contract: profit : number  ->  number
;; Purpose: to calculate profit by ticket price
;; Example: (profit 3) should produce 1063.2
;; Definition: [refines the header]
(define (profit price)  (- (revenue price) (cost price)))
;; Tests:
(profit 3) 
;; expected value
1063.2
