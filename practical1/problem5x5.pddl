(define (problem cleaner5x5)
  (:domain roboticworld)
  (:objects o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25
            boxA boxB boxC boxD boxE)
  
  (:init
     ; Robot's initial location
    (robot_at o5)
    
    ; Box locations
    (box_at boxA o1)
    (box_at boxB o6)
    (box_at boxC o11)
    (box_at boxD o15)
    (box_at boxE o25)

    ; Office cleanliness
    (dirty o1)
    (dirty o3)
    (dirty o5)
    (dirty o7)
    (dirty o9)
    (dirty o12)
    (dirty o14)
    (dirty o16)
    (dirty o19)
    (dirty o21)
    (dirty o23)
    
    ; Office emptiness
    (empty o2)
    (empty o3)
    (empty o4)
    (empty o5)
    (empty o7)
    (empty o8)
    (empty o9)
    (empty o10)
    (empty o12)
    (empty o13)
    (empty o14)
    (empty o16)
    (empty o17)
    (empty o18)
    (empty o19)
    (empty o20)
    (empty o21)
    (empty o22)
    (empty o23)
    (empty o24)
    
    ; Adjacency relations
    (adjacent o1 o2)
    (adjacent o1 o6)

    (adjacent o2 o1)
    (adjacent o2 o3)
    (adjacent o2 o7)

    (adjacent o3 o2)
    (adjacent o3 o4)
    (adjacent o3 o8)

    (adjacent o4 o3)
    (adjacent o4 o5)
    (adjacent o4 o9)

    (adjacent o5 o4)
    (adjacent o5 o10)

    (adjacent o6 o1)
    (adjacent o6 o7)
    (adjacent o6 o11)

    (adjacent o7 o2)
    (adjacent o7 o6)
    (adjacent o7 o8)
    (adjacent o7 o12)

    (adjacent o8 o3)
    (adjacent o8 o7)
    (adjacent o8 o9)
    (adjacent o8 o13)

    (adjacent o9 o4)
    (adjacent o9 o8)
    (adjacent o9 o10)
    (adjacent o9 o14)

    (adjacent o10 o5)
    (adjacent o10 o9)
    (adjacent o10 o15)

    (adjacent o11 o6)
    (adjacent o11 o12)
    (adjacent o11 o16)

    (adjacent o12 o7)
    (adjacent o12 o11)
    (adjacent o12 o13)
    (adjacent o12 o17)

    (adjacent o13 o8)
    (adjacent o13 o12)
    (adjacent o13 o14)
    (adjacent o13 o18)

    (adjacent o14 o9)
    (adjacent o14 o13)
    (adjacent o14 o15)
    (adjacent o14 o19)

    (adjacent o15 o10)
    (adjacent o15 o14)
    (adjacent o15 o20)

    (adjacent o16 o11)
    (adjacent o16 o17)
    (adjacent o16 o21)

    (adjacent o17 o12)
    (adjacent o17 o16)
    (adjacent o17 o18)
    (adjacent o17 o22)

    (adjacent o18 o13)
    (adjacent o18 o17)
    (adjacent o18 o19)
    (adjacent o18 o23)
  
    (adjacent o19 o14)
    (adjacent o19 o18)
    (adjacent o19 o20)
    (adjacent o19 o24)

    (adjacent o20 o15)
    (adjacent o20 o19)
    (adjacent o20 o25)

    (adjacent o21 o16)
    (adjacent o21 o22)

    (adjacent o22 o17)
    (adjacent o22 o21)
    (adjacent o22 o23)

    (adjacent o23 o18)
    (adjacent o23 o22)
    (adjacent o23 o24)

    (adjacent o24 o19)
    (adjacent o24 o23)
    (adjacent o24 o25)

    (adjacent o25 o20)
    (adjacent o25 o24)
  )

  ; Goal state 
  (:goal (and
    ; Robot's final location
    (robot_at o13)
    
    ; Box locations at the end
    (box_at boxA o6)
    (box_at boxB o10)
    (box_at boxC o11)
    (box_at boxD o15)
    (box_at boxE o1)
    
    ; Office cleanliness at the end
    (clean o1)
    (clean o3)
    (clean o5)
    (clean o7)
    (clean o9)
    (clean o12)
    (clean o14)
    (clean o16)
    (clean o19)
    (clean o21)
    (clean o23)
  ))
)


