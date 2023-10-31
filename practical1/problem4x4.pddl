(define (problem cleaner4x4) ;revision
  (:domain roboticworld)
  (:objects o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 boxA boxB boxC boxD boxE boxF boxG)

  (:init
     ; Robot's initial location
    (robot_at o6)
    
    ; Box locations
    (box_at boxA o4)
    (box_at boxB o8)
    (box_at boxC o12)
    (box_at boxD o10)
    (box_at boxE o1)
    (box_at boxF o13)
    (box_at boxG o15)

    ; Office cleanliness
    (dirty o1)
    (dirty o4)
    (dirty o5)
    (dirty o7)
    (dirty o10)
    (dirty o12)
    (dirty o14)
    (dirty o15)
    (dirty o16)

    ; Office emptiness
    (empty o2)
    (empty o3)
    (empty o5)
    (empty o6)
    (empty o7)
    (empty o9)
    (empty o11)
    (empty o14)
    (empty o16)

    ; Adjacency relations
    (adjacent o1 o2)
    (adjacent o1 o5)

    (adjacent o2 o1)
    (adjacent o2 o3)
    (adjacent o2 o6)

    (adjacent o3 o2)
    (adjacent o3 o4)
    (adjacent o3 o7)

    (adjacent o4 o3)
    (adjacent o4 o8)

    (adjacent o5 o1)
    (adjacent o5 o6)
    (adjacent o5 o9)

    (adjacent o6 o2)
    (adjacent o6 o5)
    (adjacent o6 o7)
    (adjacent o6 o10)

    (adjacent o7 o3)
    (adjacent o7 o6)
    (adjacent o7 o8)
    (adjacent o7 o11)

    (adjacent o8 o4)
    (adjacent o8 o7)
    (adjacent o8 o12)

    (adjacent o9 o5)
    (adjacent o9 o10)
    (adjacent o9 o13)

    (adjacent o10 o6)
    (adjacent o10 o9)
    (adjacent o10 o11)
    (adjacent o10 o14)

    (adjacent o11 o7)
    (adjacent o11 o10)
    (adjacent o11 o12)
    (adjacent o11 o15)

    (adjacent o12 o8)
    (adjacent o12 o11)
    (adjacent o12 o16)

    (adjacent o13 o9)
    (adjacent o13 o14)

    (adjacent o14 o10)
    (adjacent o14 o13)
    (adjacent o14 o15)

    (adjacent o15 o11)
    (adjacent o15 o14)
    (adjacent o15 o16)

    (adjacent o16 o12)
    (adjacent o16 o15)
  )

  ; Goal state 
  (:goal (and
    ; Robot's final location
    (robot_at o7)
    
    ; Box locations at the end
    (box_at boxA o4)
    (box_at boxB o9)
    (box_at boxC o14)
    (box_at boxD o3)
    (box_at boxE o7)
    (box_at boxF o10)
    (box_at boxG o1)

    ; Office cleanliness at the end
    (clean o1)
    (clean o4)
    (clean o5)
    (clean o7)
    (clean o10)
    (clean o12)
    (clean o14)
    (clean o15)
    (clean o16)
  ))
)