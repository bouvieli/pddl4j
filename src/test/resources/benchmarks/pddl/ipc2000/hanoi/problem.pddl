(define (problem blocks-4-0)
(:domain blocks)
(:objects  b a c - block tour1 tour2 tour3 - tower)
(:init (clear_tower tour2) (clear_tower tour3) (ontower c tour1) (on c b) (on b a) (clear a) (handempty)
(plusgrand c b)
(plusgrand c a)
(plusgrand b a)
)
(:goal (and (on c b) (on b a) (ontower c tour2)))
)