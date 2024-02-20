(define (problem p01)
        (:domain logistics)

(:objects plane - airplane
    truck - truck
    cdg lhr - airport
    south north - location
    paris london grenoble - city
    p1 p2 - package
)
(:init (in-city cdg london)
    (in-city lhr grenoble)
    (in-city north paris)
    (in-city south paris)
    (at plane lhr)
    (at truck cdg)
    (at p1 lhr)
    (at p2 lhr)
)
(:goal (and (at p1 north)
    (at p2 south))
))