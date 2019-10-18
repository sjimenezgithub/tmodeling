(define (problem depotprob1916) (:domain Depot)
(:objects
	depot0 depot1 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 truck2 truck3 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate13)
	(at pallet1 depot1)
	(clear crate11)
	(at pallet2 distributor0)
	(clear crate14)
	(at pallet3 distributor1)
	(clear crate10)
	(at pallet4 depot0)
	(clear pallet4)
	(at pallet5 distributor0)
	(clear crate8)
	(at pallet6 distributor1)
	(clear crate3)
	(at pallet7 depot1)
	(clear crate5)
	(at truck0 depot1)
	(at truck1 distributor0)
	(at truck2 depot0)
	(at truck3 depot1)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 distributor0)
	(available hoist2)
	(at hoist3 distributor1)
	(available hoist3)
	(at hoist4 distributor0)
	(available hoist4)
	(at hoist5 depot0)
	(available hoist5)
	(at hoist6 distributor0)
	(available hoist6)
	(at hoist7 distributor1)
	(available hoist7)
	(at crate0 depot0)
	(on crate0 pallet0)
	(at crate1 depot1)
	(on crate1 pallet1)
	(at crate2 distributor0)
	(on crate2 pallet2)
	(at crate3 distributor1)
	(on crate3 pallet6)
	(at crate4 depot0)
	(on crate4 crate0)
	(at crate5 depot1)
	(on crate5 pallet7)
	(at crate6 distributor0)
	(on crate6 pallet5)
	(at crate7 depot0)
	(on crate7 crate4)
	(at crate8 distributor0)
	(on crate8 crate6)
	(at crate9 distributor1)
	(on crate9 pallet3)
	(at crate10 distributor1)
	(on crate10 crate9)
	(at crate11 depot1)
	(on crate11 crate1)
	(at crate12 distributor0)
	(on crate12 crate2)
	(at crate13 depot0)
	(on crate13 crate7)
	(at crate14 distributor0)
	(on crate14 crate12)
)

(:goal (and
		(on crate0 crate10)
		(on crate1 pallet6)
		(on crate2 crate12)
		(on crate4 pallet4)
		(on crate5 pallet2)
		(on crate6 pallet7)
		(on crate8 crate4)
		(on crate9 crate1)
		(on crate10 pallet1)
		(on crate11 pallet5)
		(on crate12 crate5)
		(on crate13 pallet3)
		(on crate14 pallet0)
	)
)(:metric minimize (total-time)))
