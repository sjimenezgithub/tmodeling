; IPC5 Domain: Storage Propositional
; Authors: Alfonso Gerevini and Alessandro Saetti 

(define (domain Storage)
(:requirements :typing)
(:types hoist surface place area - object
	container depot - place
	storearea transitarea - area
	area crate - surface)

(:predicates (clear ?s - storearea)
	     (in ?x - object ?p - place)
	     (available ?h - hoist) 
	     (lifting ?h - hoist ?c - crate) 
	     (at ?h - hoist ?a - area)
	     (on ?c - crate ?s - storearea) 
	     (connected ?a1 ?a2 - area)(= ?o1 ?o2 - object)) 

(:action lift
 :parameters (?h - hoist ?c - crate ?a1 - storearea ?a2 - area ?p - place)
 :precondition (and )
 :effect (and ))
				
(:action drop
 :parameters (?h - hoist ?c - crate ?a1 - storearea ?a2 - area ?p - place)
 :precondition (and )
 :effect (and ))

(:action move
 :parameters (?h - hoist ?from ?to - storearea)
 :precondition (and )
 :effect (and ))

(:action go-out
 :parameters (?h - hoist ?from - storearea ?to - transitarea)
 :precondition (and )
 :effect (and ))

(:action go-in
 :parameters (?h - hoist ?from - transitarea ?to - storearea)
 :precondition (and )
 :effect (and ))
)

