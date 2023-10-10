;Header and description

(define (domain puzzlegame)

;remove requirements that are not needed
(:requirements :strips :equality)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (tile ?t)
    (position ?p)
    (incr ?x ?y)
    (decr ?x ?y)
    (blank ?x ?y)
    (at ?t ?x ?y)
)

;define actions here
(:action move_up
    :parameters (?t ?x ?y ?y2)
    :precondition (and 
        (tile ?t) (position ?x) (position ?y) (position ?y2)
        (decr ?y2 ?y) (blank ?x ?y2) (at ?t ?x ?y) )
    :effect (and 
        (blank ?x ?y) (not (blank ?x ?y2)) (at ?t ?x ?y2) (not (at ?t ?x ?y)))
)

(:action move_down
    :parameters (?t ?x ?y ?y2)
    :precondition (and 
        (tile ?t) (position ?x) (position ?y) (position ?y2) 
        (incr ?y2 ?y) (blank ?x ?y2) (at ?t ?x ?y) )
    :effect (and 
        (blank ?x ?y) (not (blank ?x ?y2)) (at ?t ?x ?y2) (not (at ?t ?x ?y)))
)
    
(:action move_right
    :parameters (?t ?x ?y ?x2)
    :precondition (and 
        (tile ?t) (position ?x) (position ?y) (position ?x2) 
        (incr ?x2 ?x) (blank ?x2 ?y) (at ?t ?x ?y) )
    :effect (and 
        (blank ?x ?y) (not (blank ?x2 ?y)) (at ?t ?x2 ?y) (not (at ?t ?x ?y)))
)

(:action move_left
    :parameters (?t ?x ?y ?x2)
    :precondition (and 
        (tile ?t) (position ?x) (position ?y) (position ?x2) 
        (decr ?x2 ?x) (blank ?x2 ?y) (at ?t ?x ?y) )
    :effect (and 
        (blank ?x ?y) (not (blank ?x2 ?y)) (at ?t ?x2 ?y) (not (at ?t ?x ?y)))
)

)

