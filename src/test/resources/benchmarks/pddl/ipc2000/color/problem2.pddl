(define (problem coloriage)
(:domain coloriage)
(:objects n1 n2 - noeud
                a1 - arrete
                c1 c2 - color)
        (:init
                (voisin n1 n2)
                (differentes_couleurs c1 c2)
                (entre a1 n1 n2)
                )
        (:goal (and (colore n1) (colore n2)))
)
