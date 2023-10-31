(define (problem cleaner3x3v2)
  (:domain roboticworld)
  (:objects o1 o2 o3 o4 o5 o6 o7 o8 o9 boxA boxB boxC)
  
  (:init
    ; Robot's initial location
    (robot_at o2)
    
    ; Box locations
    (box_at boxA o2)
    (box_at boxB o5)
    (box_at boxC o9)
    
    ; Office emptiness
    (empty o1)
    (empty o3)
    (empty o4)
    (empty o6)
    (empty o7)
    (empty o8)
    
    ; Office cleanliness
    (dirty o1)
    (dirty o2)
    (dirty o3)
    (dirty o4)
    (dirty o5)
    (dirty o6)
    (dirty o7)
    (dirty o8)
    (dirty o9)
    
    ; Adjacency relations
    (adjacent o1 o2)
    (adjacent o1 o4)

    (adjacent o2 o1)
    (adjacent o2 o3)
    (adjacent o2 o5)
    
    (adjacent o3 o2)
    (adjacent o3 o6)
    
    (adjacent o4 o1)
    (adjacent o4 o5)
    (adjacent o4 o7)
    
    (adjacent o5 o2)
    (adjacent o5 o4)
    (adjacent o5 o6)
    (adjacent o5 o8)
    
    (adjacent o6 o3)
    (adjacent o6 o5)
    (adjacent o6 o9)
    
    (adjacent o7 o4)
    (adjacent o7 o8)
    
    (adjacent o8 o5)
    (adjacent o8 o7)
    (adjacent o8 o9)
    
    (adjacent o9 o6)
    (adjacent o9 o8)
  )
  
  (:goal
    (and
      ; Robot's final location
      (robot_at o7)

      ; Box locations at the end
      (box_at boxA o4)
      (box_at boxB o1)
      (box_at boxC o5)

      ; Office cleanliness at the end
      (clean o1)
      (clean o2)
      (clean o3)
      (clean o4)
      (clean o5)
      (clean o6)
      (clean o7)
      (clean o8)
      (clean o9)
    )
  )
)