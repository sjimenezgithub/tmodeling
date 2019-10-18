(define (problem depotprob5656) (:domain Depot)
(:objects
	depot0 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - Crate
	hoist0 hoist1 hoist2 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate11)
	(at pallet1 distributor0)
	(clear crate14)
	(at pallet2 distributor1)
	(clear crate10)
	(at truck0 distributor1)
	(at truck1 depot0)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor1)
	(on crate0 pallet2)
	(at crate1 depot0)
	(on crate1 pallet0)
	(at crate2 distributor1)
	(on crate2 crate0)
	(at crate3 distributor0)
	(on crate3 pallet1)
	(at crate4 distributor0)
	(on crate4 crate3)
	(at crate5 distributor1)
	(on crate5 crate2)
	(at crate6 depot0)
	(on crate6 crate1)
	(at crate7 distributor0)
	(on crate7 crate4)
	(at crate8 distributor0)
	(on crate8 crate7)
	(at crate9 distributor0)
	(on crate9 crate8)
	(at crate10 distributor1)
	(on crate10 crate5)
	(at crate11 depot0)
	(on crate11 crate6)
	(at crate12 distributor0)
	(on crate12 crate9)
	(at crate13 distributor0)
	(on crate13 crate12)
	(at crate14 distributor0)
	(on crate14 crate13)
)

(:goal (and
		(on crate0 crate8)
		(on crate1 crate9)
		(on crate2 crate1)
		(on crate3 crate12)
		(on crate4 crate11)
		(on crate5 crate0)
		(on crate8 pallet0)
		(on crate9 pallet1)
		(on crate10 crate4)
		(on crate11 crate5)
		(on crate12 pallet2)
	)
)(:metric minimize (total-time)))
