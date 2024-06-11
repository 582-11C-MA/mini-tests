;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname fizzbuzz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ----------------------------------------------------------------------
;; Valeur d'entrée

(define number 10)

;; ----------------------------------------------------------------------
;; Variables auxiliaires

(define div-by-3? (= (remainder number 3) 0))
(define div-by-5? (= (remainder number 5) 0))
(define div-by-both? (and div-by-3? div-by-5?))

;; ----------------------------------------------------------------------
;; Valeur de sortie

(cond (div-by-both? "fizzbuzz")
      (div-by-3? "fizz")
      (div-by-5? "buzz")
      (else number))
