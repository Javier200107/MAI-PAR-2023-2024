(define (problem pb_puzzle)
  (:domain puzzlegame)
  (:objects t1 t2 t3 t4 t5 t6 t7 t8 p1 p2 p3 blank)
  (:init 
       (tile t1)
       (tile t2)
       (tile t3)
       (tile t4)
       (tile t5)
       (tile t6)
       (tile t7)
       (tile t8)

       (position p1)
       (position p2)
       (position p3)

       (blank p2 p2)

       (at t8 p3 p1)
       (at t7 p1 p1)
       (at t6 p2 p3)
       (at t5 p2 p1)
       (at t4 p1 p3)
       (at t3 p3 p2)
       (at t2 p1 p2)
       (at t1 p3 p3)

       (incr p1 p2)
       (incr p2 p3)

       (decr p3 p2)
       (decr p2 p1)
       
)


  (:goal (and (at t8 p3 p3) (at t7 p3 p2) (at t6 p3 p1) (at t5 p2 p3)
      (at t4 p2 p2) (at t3 p2 p1) (at t2 p1 p3) (at t1 p1 p2)
      (blank p1 p1)
    ))
  
  )