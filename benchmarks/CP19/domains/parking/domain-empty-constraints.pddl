(define (domain parking)
 (:requirements :strips :typing :action-costs)
 (:types car curb)
 (:predicates 
    (at-curb ?car - car) 
    (at-curb-num ?car - car ?curb - curb)
    (behind-car ?car ?front-car - car)
    (car-clear ?car - car) 
    (curb-clear ?curb - curb)
 )


	(:action move-curb-to-curb
		:parameters (?car - car ?curbsrc ?curbdest - curb)
		:precondition (and 
		)
		:effect (and 
		)
	)

	(:action move-curb-to-car
		:parameters (?car - car ?curbsrc - curb ?cardest - car)
		:precondition (and 
		)
		:effect (and 
		)
	)

	(:action move-car-to-curb
		:parameters (?car - car ?carsrc - car ?curbdest - curb)
		:precondition (and
		)
		:effect (and 
		)
	)

	(:action move-car-to-car
		:parameters (?car - car ?carsrc - car ?cardest - car)
		:precondition (and 
		)
		:effect (and 
		)
	)

(:derived (invariant-1)
	(forall(?x - car ?y1 - curb ?y2 - curb)
		(not (and  (at-curb-num ?x ?y1)  (at-curb-num ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-2)
	(forall(?x - car ?y1 - car ?y2 - car)
		(not (and  (behind-car ?x ?y1)  (behind-car ?x ?y2) (not (= ?y1 ?y2)) ))))
(:derived (invariant-3)
	(forall (?x - car ?y1 - car ?y2 - curb)
		(not (and (behind-car ?x ?y1) (at-curb-num ?x ?y2)))))
(:derived (invariant-4)
	(forall (?x - car ?y1 - car)
		(not (and (behind-car ?x ?y1) (at-curb ?x)))))
(:derived (invariant-5)
	(forall(?x - car ?y1 - car ?y2 - car)
		(not (and  (behind-car ?y1 ?x)  (behind-car ?y2 ?x) (not (= ?y1 ?y2)) ))))
(:derived (invariant-6)
	(forall (?x - car ?y1 - car)
		(not (and (car-clear ?x) (behind-car ?y1 ?x)))))
(:derived (invariant-7)
	(forall(?x - curb ?y1 - car ?y2 - car)
		(not (and  (at-curb-num ?y1 ?x)  (at-curb-num ?y2 ?x) (not (= ?y1 ?y2)) ))))
(:derived (invariant-8)
	(forall (?x - curb ?y1 - car)
		(not (and (curb-clear ?x) (at-curb-num ?y1 ?x)))))

)