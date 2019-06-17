(define (domain sokoban)
  (:requirements :typing :action-costs)
  (:types thing location direction - object
          player stone - thing)
  (:predicates (clear ?l - location)
	       (at ?t - thing ?l - location)
	       (at-goal ?s - stone)
	       (IS-GOAL ?l - location)
	       (IS-NONGOAL ?l - location)
               (MOVE-DIR ?from ?to - location ?dir - direction))
  

  (:action move
   :parameters (?p - player ?from ?to - location ?dir - direction)
   :precondition (and )
   :effect       (and )
   )

  (:action push-to-nongoal
   :parameters (?p - player ?s - stone
                ?ppos ?from ?to - location
                ?dir - direction)
   :precondition (and )
   :effect       (and )
   )

  (:action push-to-goal
   :parameters (?p - player ?s - stone
                ?ppos ?from ?to - location
                ?dir - direction)
   :precondition (and )
   :effect       (and )
   )

(:derived (invariant-1)
	(forall(?x - location ?y1 - thing ?y2 - thing)
		(not (and  (at ?y1 ?x)  (at ?y2 ?x) (not (= ?y1 ?y2)) ))))
(:derived (invariant-2)
	(forall (?x - location ?y1 - thing)
		(not (and (clear ?x) (at ?y1 ?x)))))
(:derived (invariant-3)
	(forall(?x - thing ?y1 - location ?y2 - location)
		(not (and  (at ?x ?y1)  (at ?x ?y2) (not (= ?y1 ?y2)) ))))


)
