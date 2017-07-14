;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname section4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define lowrate 0.04)
(define midrate 0.045)
(define highrate 0.05)
(define lowcut 1000)
(define highcut 5000)

;; Contract: interestrate : number  ->  number
;; Purpose: to decide the interest rate by deposit
;; Example: (interestrate 5100) should produce 0.05
;; Definition: [refines the header]
(define (interestrate deposit)
  (cond
    [(<= deposit lowcut) (* deposit lowrate)]
    [(<= deposit highcut) (* deposit midrate)]
    [(> deposit highcut) (* deposit highrate)]))
;; Tests:
(interestrate 5100) 
;; expected value
255





