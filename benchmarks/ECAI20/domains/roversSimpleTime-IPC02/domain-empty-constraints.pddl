(define (domain Rover)
(:requirements :typing)
(:types rover waypoint store camera mode lander objective)

(:predicates (at ?x - rover ?y - waypoint) 
             (at_lander ?x - lander ?y - waypoint)
             (can_traverse ?r - rover ?x - waypoint ?y - waypoint)
	     (equipped_for_soil_analysis ?r - rover)
             (equipped_for_rock_analysis ?r - rover)
             (equipped_for_imaging ?r - rover)
             (empty ?s - store)
             (have_rock_analysis ?r - rover ?w - waypoint)
             (have_soil_analysis ?r - rover ?w - waypoint)
             (full ?s - store)
	     (calibrated ?c - camera ?r - rover) 
	     (supports ?c - camera ?m - mode)
             (available ?r - rover)
             (visible ?w - waypoint ?p - waypoint)
             (have_image ?r - rover ?o - objective ?m - mode)
             (communicated_soil_data ?w - waypoint)
             (communicated_rock_data ?w - waypoint)
             (communicated_image_data ?o - objective ?m - mode)
	     (at_soil_sample ?w - waypoint)
	     (at_rock_sample ?w - waypoint)
             (visible_from ?o - objective ?w - waypoint)
	     (store_of ?s - store ?r - rover)
	     (calibration_target ?i - camera ?o - objective)
	     (on_board ?i - camera ?r - rover)
	     (channel_free ?l - lander)(= ?o1 ?o2 - object)

)

	
(:action navigate
:parameters (?x - rover ?y - waypoint ?z - waypoint) 
:precondition (and )
:effect (and )
)

(:action sample-soil
:parameters (?x - rover ?s - store ?p - waypoint)
:precondition (and )
:effect (and )
)

(:action sample-rock
:parameters (?x - rover ?s - store ?p - waypoint)
:precondition (and )
:effect (and )
)

(:action drop
:parameters (?x - rover ?y - store)
:precondition (and )
:effect (and )
)

(:action calibrate
 :parameters (?r - rover ?i - camera ?t - objective ?w - waypoint)
 :precondition (and )
 :effect (and) 
)

(:action take-image
 :parameters (?r - rover ?p - waypoint ?o - objective ?i - camera ?m - mode)
 :precondition (and )
 :effect (and )
)


(:action communicate-soil-data
 :parameters (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
 :precondition (and )
 :effect (and )
)

(:action communicate-rock-data
 :parameters (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
 :precondition (and )
 :effect (and )
)


(:action communicate-image-data
 :parameters (?r - rover ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint)
 :precondition (and )
 :effect (and )
)

(:derived (invariant-1)
	(forall (?x - store)
		(not (and (full ?x) (empty ?x)))))
(:derived (invariant-2)
	(forall(?x - rover ?y1 - waypoint ?y2 - waypoint)
		(not (and  (at ?x ?y1)  (at ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-3)
	(forall(?x - waypoint ?y1 - rover ?y2 - rover)
		(not (and  (have_rock_analysis ?y1 ?x)  (have_rock_analysis ?y2 ?x) (not (= ?y1 ?y2)) ))))
(:derived (invariant-4)
	(forall (?y1 - rover ?x - waypoint)
		(not (and (have_rock_analysis ?y1 ?x) (at_rock_sample ?x)))))
(:derived (invariant-5)
	(forall(?x - waypoint ?y1 - rover ?y2 - rover)
		(not (and  (have_soil_analysis ?y1 ?x)  (have_soil_analysis ?y2 ?x) (not (= ?y1 ?y2)) ))))
(:derived (invariant-6)
	(forall (?x - waypoint ?y1 - rover)
		(not (and (at_soil_sample ?x) (have_soil_analysis ?y1 ?x)))))


)
