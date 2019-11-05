(define (problem p1)
 (:domain floor-tile)
 (:objects tile-0-1 tile-0-2 
           tile-1-1 tile-1-2 - tile
           robot1 robot2 - robot
           white black - color
)
 (:init 
   (robot-at robot1 tile-1-2)
   (robot-has robot1 white)
   (robot-at robot2 tile-0-1)
   (robot-has robot2 black)
   (available-color white)
   (available-color black)
   (clear tile-0-2)

   (clear tile-1-1)
   (clear tile-1-2)
   (tile-up tile-1-1 tile-0-1)
   (tile-up tile-1-2 tile-0-2)
   (tile-down tile-0-1 tile-1-1)
   (tile-down tile-0-2 tile-1-2)
   (tile-right tile-0-2 tile-0-1)
   (tile-right tile-1-2 tile-1-1)
   (tile-left tile-0-1 tile-0-2)
   (tile-left tile-1-1 tile-1-2)
)
 (:goal (and
    (painted tile-1-1 white)
    (painted tile-1-2 black)
))
 (:metric minimize (total-time))
)
