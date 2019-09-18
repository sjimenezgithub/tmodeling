(define (domain zeno-travel)
(:requirements :typing)
(:types locatable city flevel - object
        aircraft person - locatable)
(:predicates (at ?x - locatable ?c - city)
             (in ?p - person ?a - aircraft)
	     (fuel-level ?a - aircraft ?l - flevel)
	     (next ?l1 ?l2 - flevel)(= ?o1 ?o2 - object))


(:action board
 :parameters (?p - person ?a - aircraft ?c - city)
 :precondition (and )
 :effect (and ))

(:action debark
 :parameters (?p - person ?a - aircraft ?c - city)
 :precondition (and )
 :effect (and ))

(:action fly 
 :parameters (?a - aircraft ?c1 ?c2 - city ?l1 ?l2 - flevel)
 :precondition (and )
 :effect (and ))
                                  
(:action zoom
 :parameters (?a - aircraft ?c1 ?c2 - city ?l1 ?l2 ?l3 - flevel)
 :precondition (and )
 :effect (and )
) 

(:action refuel
 :parameters (?a - aircraft ?c - city ?l - flevel ?l1 - flevel)
 :precondition (and )
 :effect (and ))

(:derived (invariant-1)
	(forall(?x - locatable ?y1 - city ?y2 - city)
		(not (and  (at ?x ?y1)  (at ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-2)
	(forall(?x - person ?y1 - aircraft ?y2 - aircraft)
		(not (and  (in ?x ?y1)  (in ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-3)
	(forall (?x - person ?y1 - city ?y2 - aircraft)
		(not (and (at ?x ?y1) (in ?x ?y2)))))
(:derived (invariant-4)
	(forall(?x - aircraft ?y1 - flevel ?y2 - flevel)
		(not (and  (fuel-level ?x ?y1)  (fuel-level ?x ?y2) (not (= ?y1 ?y2)) ))))

)
