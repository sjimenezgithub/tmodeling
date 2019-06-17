;;Created by Tomas de la Rosa
;;Domain for painting floor tiles with two colors

(define (domain floor-tile)
(:requirements :typing)
(:types robot tile color - object)

(:predicates 	
		(robot-at ?r - robot ?x - tile)
		(tile-up ?x - tile ?y - tile)
		(tile-down ?x - tile ?y - tile)
		(tile-right ?x - tile ?y - tile)
		(tile-left ?x - tile ?y - tile)
		
		(clear ?x - tile)
                (painted ?x - tile ?c - color)
		(robot-has ?r - robot ?c - color)
                (available-color ?c - color)
                (free-color ?r - robot))


(:action change-color
  :parameters (?r - robot ?c - color ?c2 - color)
  :precondition (and )
  :effect (and )
) 


(:action paint-up
  :parameters (?r - robot ?y - tile ?x - tile ?c - color)
  :precondition (and )
  :effect (and )
)


(:action paint-down
  :parameters (?r - robot ?y - tile ?x - tile ?c - color)
  :precondition (and )
  :effect (and )
)


; Robot movements
(:action up 
  :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and )
  :effect (and )
)


(:action down 
  :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and )
  :effect (and )
)

(:action right 
  :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and )
  :effect (and )
)

(:action left 
  :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and )
  :effect (and )
)

(:derived (invariant-1)
	(forall(?x - tile ?y1 - robot ?y2 - robot)
		(not (and  (robot-at ?y1 ?x)  (robot-at ?y2 ?x) (not (= ?y1 ?y2)) ))))
(:derived (invariant-2)
	(forall(?x - tile ?y1 - color ?y2 - color)
		(not (and  (painted ?x ?y1)  (painted ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-3)
	(forall (?x - tile ?y1 - color)
		(not (and (clear ?x) (painted ?x ?y1)))))
(:derived (invariant-4)
	(forall (?x - tile ?y1 - color ?y2 - robot)
		(not (and (painted ?x ?y1) (robot-at ?y2 ?x)))))
(:derived (invariant-5)
	(forall (?x - tile ?y1 - robot)
		(not (and (clear ?x) (robot-at ?y1 ?x)))))
(:derived (invariant-6)
	(forall(?x - robot ?y1 - color ?y2 - color)
		(not (and  (robot-has ?x ?y1)  (robot-has ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-7)
	(forall(?x - robot ?y1 - tile ?y2 - tile)
		(not (and  (robot-at ?x ?y1)  (robot-at ?x ?y2) (not (= ?y1 ?y2)) ))))

)
