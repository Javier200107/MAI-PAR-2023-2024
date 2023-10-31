(define (domain roboticworld)

(:requirements :strips :equality :adl)

(:predicates
    (robot_at ?o)
    (box_at ?b ?o)
    (dirty ?o)
    (clean ?o)
    (empty ?o)
    (adjacent ?o1 ?o2)
)

(:action clean_office
    :parameters (?o)
    :precondition (and (robot_at ?o) (dirty ?o) (not (clean ?o))) 
    :effect (and (clean ?o) (not (dirty ?o)))
)

(:action move
    :parameters (?o1 ?o2)
    :precondition (and (robot_at ?o1) (adjacent ?o1 ?o2))
    :effect (and (robot_at ?o2) (not (robot_at ?o1)))
)

(:action push_box
    :parameters (?o1 ?o2 ?b)
    :precondition (and (adjacent ?o1 ?o2) (robot_at ?o1) (box_at ?b ?o1) (not (empty ?o1)) (empty ?o2))
    :effect (and (empty ?o1) (not(empty ?o2)) (not (box_at ?b ?o1)) (not (robot_at ?o1)) (robot_at ?o2) (box_at ?b ?o2))
)

)