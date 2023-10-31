(define (problem cleaner2x2) (:domain roboticworld)
(:objects o1 o2 o3 o4 boxA
)

(:init
    ; Robot's initial location
    (robot_at o1)

    ; Box's initial location
    (box_at boxA o2)

    ; Office emptiness
    (empty o1)
    (empty o3)
    (empty o4)

    ; Office cleanliness
    (dirty o1)

    ; Adjacency relations
    (adjacent o1 o2)
    (adjacent o1 o3)

    (adjacent o2 o1)
    (adjacent o2 o4)

    (adjacent o3 o1)
    (adjacent o3 o4)

    (adjacent o4 o2)
    (adjacent o4 o3)
)

(:goal (and
    ; Robot's final location
    (robot_at o3)

    ; Box's final location
    (box_at boxA o4)

    ; Office cleanliness at the end
    (clean o1)
    )
)
)