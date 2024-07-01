;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname taux) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Un Revenu est un Nombre.
;; interprétation : dollars

;; Un TauxImposition est un Nombre parmi :
;; - 14 interprétation : % retenu pour un revenu de 51,790 ou moins
;; - 19 interprétation : % retenu pour un revenu entre 51 780 et 103 545
;; - 24 interprétation : % retenu pour un revenu entre 103 545 et 126 000
;; - 25.75 interprétation : % retenu pour une revenu supéreur à 126 000

;; Revenu -> Taux
;; Détermine le taux d'imposition applicable pour le revenu donné.
(define (taux revenu)
  (cond ((<= revenu 51780) 14)
        ((<= revenu 103545) 19)
        ((<= revenu 126000) 24)
        ((> revenu 126000) 25.75)))

(check-expect (taux 51779) 14)
(check-expect (taux 51780) 14)
(check-expect (taux 103544) 19)
(check-expect (taux 103545) 19)
(check-expect (taux 125999) 24)
(check-expect (taux 126000) 24)
(check-expect (taux 126001) 25.75)