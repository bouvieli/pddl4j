(define (domain coloriage)
    (:requirements :strips :typing)
    (:types noeud arrete color)
    
    (:predicates
        (voisin ?n1 ?n2 - noeud)
        (incolore ?n - noeud)
        (colore ?n - noeud)
        (couleur ?c - color)
        (differentes_couleurs ?c1 ?c2 - color)
        (marquee ?a - arrete)
        (entre ?a - arrete ?n1 ?n2 - noeud)
    )

    (:action colorier2noeuds
        :parameters (?n1 ?n2 - noeud ?c1 ?c2 - color)
        ; :precondition (and (voisin ?n1 ?n2) (not(colore ?n1)) (not(colore ?n2)) (differentes_couleurs ?c1 ?c2))
        :precondition (and (voisin ?n1 ?n2) (incolore ?n1) (incolore ?n2) (differentes_couleurs ?c1 ?c2))
        :effect (and (colore ?n1) (colore ?n2) (not(incolore?n1)) (not(incolore?n2))(couleur ?c1) (couleur ?c2))
    )

    (:action colorier1noeud
        :parameters (?n1 ?n2 - noeud ?c1 ?c2 - color)
        ; :precondition (and (voisin ?n1 ?n2) (colore ?n1) (not(colore ?n2)) (differentes_couleurs ?c1 ?c2))
        :precondition (and (voisin ?n1 ?n2) (colore ?n1) (incolore ?n2) (differentes_couleurs ?c1 ?c2))
        :effect (and (colore ?n2) (couleur ?c2)(not(incolore?n2)))
    )

    (:action marquerarrete
        :parameters (?n1 ?n2 - noeud ?a - arrete ?c1 ?c2 - color)
        :precondition (and (voisin ?n1 ?n2) (colore ?n1) (colore ?n2) (entre ?a ?n1 ?n2) (differentes_couleurs ?c1 ?c2))
        :effect (marquee ?a)
    )
)
