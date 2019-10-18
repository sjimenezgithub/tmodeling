(define (domain Depot)
(:requirements :typing)
(:types place locatable - object
	depot distributor - place
        truck hoist surface - locatable
        pallet crate - surface)

(:predicates (at ?x - locatable ?y - place) 
             (on ?x - crate ?y - surface)
             (in ?x - crate ?y - truck)
             (lifting ?x - hoist ?y - crate)
             (available ?x - hoist)
             (clear ?x - surface)
	     (= ?o1 ?o2 - object))
	
(:action Drive
:parameters (?x - truck ?y - place ?z - place) 
:precondition (and )
:effect (and ))

(:action Lift
:parameters (?x - hoist ?y - crate ?z - surface ?p - place)
:precondition (and )
:effect (and ))

(:action Drop 
:parameters (?x - hoist ?y - crate ?z - surface ?p - place)
:precondition (and )
:effect (and ))

(:action Load
:parameters (?x - hoist ?y - crate ?z - truck ?p - place)
:precondition (and )
:effect (and ))

(:action Unload 
:parameters (?x - hoist ?y - crate ?z - truck ?p - place)
:precondition (and )
:effect (and ))


(:derived (invariant-1)
	(forall(?x - locatable ?y1 - place ?y2 - place)
		(not (and  (at ?x ?y1)  (at ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-2)
	(forall(?x - crate ?y1 - surface ?y2 - surface)
		(not (and  (on ?x ?y1)  (on ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-3)
	(forall(?x - surface ?y1 - crate ?y2 - crate)
		(not (and  (on ?y1 ?x)  (on ?y2 ?x) (not (= ?y1 ?y2)) ))))
(:derived (invariant-4)
	(forall(?x - crate ?y1 - truck ?y2 - truck)
		(not (and  (in ?x ?y1)  (in ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-5)
	(forall(?x - crate ?y1 - hoist ?y2 - hoist)
		(not (and  (lifting ?y1 ?x)  (lifting ?y2 ?x) (not (= ?y1 ?y2)) ))))
(:derived (invariant-6)
	(forall (?y1 - hoist ?x - crate ?y2 - crate)
		(not (and (lifting ?y1 ?x) (on ?y2 ?x)))))
(:derived (invariant-7)
	(forall (?y1 - hoist ?x - crate ?y2 - place)
		(not (and (lifting ?y1 ?x) (at ?x ?y2)))))
(:derived (invariant-8)
	(forall (?y1 - hoist ?x - crate ?y2 - surface)
		(not (and (lifting ?y1 ?x) (on ?x ?y2)))))
(:derived (invariant-9)
	(forall (?x - crate ?y1 - hoist)
		(not (and (clear ?x) (lifting ?y1 ?x)))))
(:derived (invariant-10)
	(forall (?x - surface ?y1 - crate)
		(not (and (clear ?x) (on ?y1 ?x)))))
(:derived (invariant-11)
	(forall(?x - hoist ?y1 - crate ?y2 - crate)
		(not (and  (lifting ?x ?y1)  (lifting ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-12)
	(forall (?x - hoist ?y1 - crate)
		(not (and (lifting ?x ?y1) (available ?x)))))


)
