(define (domain driverlog)
  (:requirements :typing) 
  (:types         location locatable - object
		driver truck obj - locatable
  
  )
  (:predicates 
		(at ?obj - locatable ?loc - location)
		(in ?obj1 - obj ?obj - truck)
		(driving ?d - driver ?v - truck)
		(link ?x ?y - location) (path ?x ?y - location)
		(empty ?v - truck)
)


(:action LOAD-TRUCK
  :parameters
   (?obj - obj
    ?truck - truck
    ?loc - location)
  :precondition
   (and )
  :effect
   (and ))

(:action UNLOAD-TRUCK
  :parameters
   (?obj - obj
    ?truck - truck
    ?loc - location)
  :precondition
   (and )
  :effect
   (and ))

(:action BOARD-TRUCK
  :parameters
   (?driver - driver
    ?truck - truck
    ?loc - location)
  :precondition
   (and )
  :effect
   (and ))

(:action DISEMBARK-TRUCK
  :parameters
   (?driver - driver
    ?truck - truck
    ?loc - location)
  :precondition
   (and )
  :effect
   (and ))

(:action DRIVE-TRUCK
  :parameters
   (?truck - truck
    ?loc-from - location
    ?loc-to - location
    ?driver - driver)
  :precondition
   (and )
  :effect
   (and ))

(:action WALK
  :parameters
   (?driver - driver
    ?loc-from - location
    ?loc-to - location)
  :precondition
   (and )
  :effect
   (and ))

(:derived (invariant-1)
	(forall(?x - locatable ?y1 - location ?y2 - location)
		(not (and  (at ?x ?y1)  (at ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-2)
	(forall(?x - obj ?y1 - truck ?y2 - truck)
		(not (and  (in ?x ?y1)  (in ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-3)
	(forall(?x - driver ?y1 - truck ?y2 - truck)
		(not (and  (driving ?x ?y1)  (driving ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-4)
	(forall (?x - driver ?y1 - truck ?y2 - truck)
		(not (and (driving ?x ?y1) (in ?x ?y2)))))
(:derived (invariant-5)
	(forall (?x - driver ?y1 - location ?y2 - truck)
		(not (and (at ?x ?y1) (driving ?x ?y2)))))
(:derived (invariant-6)
	(forall (?x - obj ?y1 - location ?y2 - truck)
		(not (and (at ?x ?y1) (in ?x ?y2)))))
(:derived (invariant-7)
	(forall(?x - truck ?y1 - driver ?y2 - driver)
		(not (and  (driving ?y1 ?x)  (driving ?y2 ?x) (not (= ?y1 ?y2)) ))))
(:derived (invariant-8)
	(forall (?x - truck ?y1 - driver)
		(not (and (empty ?x) (driving ?y1 ?x)))))
 
)
