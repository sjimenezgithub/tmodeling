
(define (domain satellite)
  (:requirements :strips :equality :typing)
  (:types satellite direction instrument mode)
 (:predicates 
               (on_board ?i - instrument ?s - satellite)
	       (supports ?i - instrument ?m - mode)
	       (pointing ?s - satellite ?d - direction)
	       (power_avail ?s - satellite)
	       (power_on ?i - instrument)
	       (calibrated ?i - instrument)
	       (have_image ?d - direction ?m - mode)
	       (calibration_target ?i - instrument ?d - direction))
 
 

  (:action turn-to
   :parameters (?s - satellite ?d_new - direction ?d_prev - direction)
   :precondition (and )
   :effect (and )
  )

 
  (:action switch-on
   :parameters (?i - instrument ?s - satellite)
 
   :precondition (and )
   :effect (and )
          
  )

 
  (:action switch-off
   :parameters (?i - instrument ?s - satellite)	
   :precondition (and )
   :effect (and )
  )

  (:action calibrate
   :parameters (?s - satellite ?i - instrument ?d - direction)
   :precondition (and )
   :effect (and )
  )


  (:action take-image
   :parameters (?s - satellite ?d - direction ?i - instrument ?m - mode)
   :precondition (and )
   :effect (and )
  )
  
(:derived (invariant-1)
	(forall(?x - satellite ?y1 - direction ?y2 - direction)
		(not (and  (pointing ?x ?y1)  (pointing ?x ?y2) (not (= ?y1 ?y2)) ))))

)

