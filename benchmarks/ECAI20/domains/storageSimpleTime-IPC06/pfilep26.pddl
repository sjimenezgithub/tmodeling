; Map of the Depots:                                      
; 0000=1111 2222 3333                 
; 0*00 111* 2*22 *333                 
;--------------------                 
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; 3: depot3 area
; *: Depot access point
; =: Transit area

(define (problem storage-26)
(:domain Storage)
(:objects
	depot0-1-1 depot0-1-2 depot0-1-3 depot0-1-4 depot0-2-1 depot0-2-2 depot0-2-3 depot0-2-4 depot1-1-1 depot1-1-2 depot1-1-3 depot1-1-4 depot1-2-1 depot1-2-2 depot1-2-3 depot1-2-4 depot2-1-1 depot2-1-2 depot2-1-3 depot2-1-4 depot2-2-1 depot2-2-2 depot2-2-3 depot2-2-4 depot3-1-1 depot3-1-2 depot3-1-3 depot3-1-4 depot3-2-1 depot3-2-2 depot3-2-3 depot3-2-4 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 container-1-1 container-1-2 container-1-3 container-2-0 container-2-1 container-2-2 container-2-3 container-3-0 container-3-1 container-3-2 container-3-3 - storearea
	hoist0 hoist1 hoist2 hoist3 hoist4 - hoist
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 - crate
	container0 container1 container2 container3 - container
	depot0 depot1 depot2 depot3 - depot
	loadarea transit0 - transitarea)

(:init
	(connected depot0-1-1 depot0-2-1)
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-2-2)
	(connected depot0-1-2 depot0-1-3)
	(connected depot0-1-2 depot0-1-1)
	(connected depot0-1-3 depot0-2-3)
	(connected depot0-1-3 depot0-1-4)
	(connected depot0-1-3 depot0-1-2)
	(connected depot0-1-4 depot0-2-4)
	(connected depot0-1-4 depot0-1-3)
	(connected depot0-2-1 depot0-1-1)
	(connected depot0-2-1 depot0-2-2)
	(connected depot0-2-2 depot0-1-2)
	(connected depot0-2-2 depot0-2-3)
	(connected depot0-2-2 depot0-2-1)
	(connected depot0-2-3 depot0-1-3)
	(connected depot0-2-3 depot0-2-4)
	(connected depot0-2-3 depot0-2-2)
	(connected depot0-2-4 depot0-1-4)
	(connected depot0-2-4 depot0-2-3)
	(connected depot1-1-1 depot1-2-1)
	(connected depot1-1-1 depot1-1-2)
	(connected depot1-1-2 depot1-2-2)
	(connected depot1-1-2 depot1-1-3)
	(connected depot1-1-2 depot1-1-1)
	(connected depot1-1-3 depot1-2-3)
	(connected depot1-1-3 depot1-1-4)
	(connected depot1-1-3 depot1-1-2)
	(connected depot1-1-4 depot1-2-4)
	(connected depot1-1-4 depot1-1-3)
	(connected depot1-2-1 depot1-1-1)
	(connected depot1-2-1 depot1-2-2)
	(connected depot1-2-2 depot1-1-2)
	(connected depot1-2-2 depot1-2-3)
	(connected depot1-2-2 depot1-2-1)
	(connected depot1-2-3 depot1-1-3)
	(connected depot1-2-3 depot1-2-4)
	(connected depot1-2-3 depot1-2-2)
	(connected depot1-2-4 depot1-1-4)
	(connected depot1-2-4 depot1-2-3)
	(connected depot2-1-1 depot2-2-1)
	(connected depot2-1-1 depot2-1-2)
	(connected depot2-1-2 depot2-2-2)
	(connected depot2-1-2 depot2-1-3)
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-1-3 depot2-2-3)
	(connected depot2-1-3 depot2-1-4)
	(connected depot2-1-3 depot2-1-2)
	(connected depot2-1-4 depot2-2-4)
	(connected depot2-1-4 depot2-1-3)
	(connected depot2-2-1 depot2-1-1)
	(connected depot2-2-1 depot2-2-2)
	(connected depot2-2-2 depot2-1-2)
	(connected depot2-2-2 depot2-2-3)
	(connected depot2-2-2 depot2-2-1)
	(connected depot2-2-3 depot2-1-3)
	(connected depot2-2-3 depot2-2-4)
	(connected depot2-2-3 depot2-2-2)
	(connected depot2-2-4 depot2-1-4)
	(connected depot2-2-4 depot2-2-3)
	(connected depot3-1-1 depot3-2-1)
	(connected depot3-1-1 depot3-1-2)
	(connected depot3-1-2 depot3-2-2)
	(connected depot3-1-2 depot3-1-3)
	(connected depot3-1-2 depot3-1-1)
	(connected depot3-1-3 depot3-2-3)
	(connected depot3-1-3 depot3-1-4)
	(connected depot3-1-3 depot3-1-2)
	(connected depot3-1-4 depot3-2-4)
	(connected depot3-1-4 depot3-1-3)
	(connected depot3-2-1 depot3-1-1)
	(connected depot3-2-1 depot3-2-2)
	(connected depot3-2-2 depot3-1-2)
	(connected depot3-2-2 depot3-2-3)
	(connected depot3-2-2 depot3-2-1)
	(connected depot3-2-3 depot3-1-3)
	(connected depot3-2-3 depot3-2-4)
	(connected depot3-2-3 depot3-2-2)
	(connected depot3-2-4 depot3-1-4)
	(connected depot3-2-4 depot3-2-3)
	(connected transit0 depot0-1-4)
	(connected transit0 depot1-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-1-3 depot0)
	(in depot0-1-4 depot0)
	(in depot0-2-1 depot0)
	(in depot0-2-2 depot0)
	(in depot0-2-3 depot0)
	(in depot0-2-4 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-1-3 depot1)
	(in depot1-1-4 depot1)
	(in depot1-2-1 depot1)
	(in depot1-2-2 depot1)
	(in depot1-2-3 depot1)
	(in depot1-2-4 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-1-3 depot2)
	(in depot2-1-4 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(in depot2-2-3 depot2)
	(in depot2-2-4 depot2)
	(in depot3-1-1 depot3)
	(in depot3-1-2 depot3)
	(in depot3-1-3 depot3)
	(in depot3-1-4 depot3)
	(in depot3-2-1 depot3)
	(in depot3-2-2 depot3)
	(in depot3-2-3 depot3)
	(in depot3-2-4 depot3)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(on crate3 container-0-3)
	(on crate4 container-1-0)
	(on crate5 container-1-1)
	(on crate6 container-1-2)
	(on crate7 container-1-3)
	(on crate8 container-2-0)
	(on crate9 container-2-1)
	(on crate10 container-2-2)
	(on crate11 container-2-3)
	(on crate12 container-3-0)
	(on crate13 container-3-1)
	(on crate14 container-3-2)
	(on crate15 container-3-3)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in crate4 container1)
	(in crate5 container1)
	(in crate6 container1)
	(in crate7 container1)
	(in crate8 container2)
	(in crate9 container2)
	(in crate10 container2)
	(in crate11 container2)
	(in crate12 container3)
	(in crate13 container3)
	(in crate14 container3)
	(in crate15 container3)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(in container-0-3 container0)
	(in container-1-0 container1)
	(in container-1-1 container1)
	(in container-1-2 container1)
	(in container-1-3 container1)
	(in container-2-0 container2)
	(in container-2-1 container2)
	(in container-2-2 container2)
	(in container-2-3 container2)
	(in container-3-0 container3)
	(in container-3-1 container3)
	(in container-3-2 container3)
	(in container-3-3 container3)
	(connected loadarea container-0-0) 
	(connected container-0-0 loadarea)
	(connected loadarea container-0-1) 
	(connected container-0-1 loadarea)
	(connected loadarea container-0-2) 
	(connected container-0-2 loadarea)
	(connected loadarea container-0-3) 
	(connected container-0-3 loadarea)
	(connected loadarea container-1-0) 
	(connected container-1-0 loadarea)
	(connected loadarea container-1-1) 
	(connected container-1-1 loadarea)
	(connected loadarea container-1-2) 
	(connected container-1-2 loadarea)
	(connected loadarea container-1-3) 
	(connected container-1-3 loadarea)
	(connected loadarea container-2-0) 
	(connected container-2-0 loadarea)
	(connected loadarea container-2-1) 
	(connected container-2-1 loadarea)
	(connected loadarea container-2-2) 
	(connected container-2-2 loadarea)
	(connected loadarea container-2-3) 
	(connected container-2-3 loadarea)
	(connected loadarea container-3-0) 
	(connected container-3-0 loadarea)
	(connected loadarea container-3-1) 
	(connected container-3-1 loadarea)
	(connected loadarea container-3-2) 
	(connected container-3-2 loadarea)
	(connected loadarea container-3-3) 
	(connected container-3-3 loadarea)  
	(connected depot0-2-2 loadarea)
	(connected loadarea depot0-2-2)
	(connected depot1-2-4 loadarea)
	(connected loadarea depot1-2-4)
	(connected depot2-2-2 loadarea)
	(connected loadarea depot2-2-2)
	(connected depot3-2-1 loadarea)
	(connected loadarea depot3-2-1)  
	(clear depot0-1-1)
	(clear depot0-1-2)
	(clear depot0-1-3)
	(clear depot0-1-4)
	(clear depot0-2-1)
	(clear depot0-2-4)
	(clear depot1-1-1)
	(clear depot1-1-2)
	(clear depot1-1-3)
	(clear depot1-2-4)
	(clear depot1-2-1)
	(clear depot1-2-2)
	(clear depot1-2-3)
	(clear depot2-1-1)
	(clear depot2-1-2)
	(clear depot2-1-3)
	(clear depot2-1-4)
	(clear depot2-2-1)
	(clear depot2-2-3)
	(clear depot3-1-1)
	(clear depot3-1-2)
	(clear depot3-1-3)
	(clear depot3-1-4)
	(clear depot3-2-1)
	(clear depot3-2-2)
	(clear depot3-2-3)
	(clear depot3-2-4)  
	(at hoist0 depot0-2-3)
	(available hoist0)
	(at hoist1 depot0-2-2)
	(available hoist1)
	(at hoist2 depot1-1-4)
	(available hoist2)
	(at hoist3 depot2-2-4)
	(available hoist3)
	(at hoist4 depot2-2-2)
	(available hoist4))

(:goal (and
	(in crate0 depot0)
	(in crate1 depot0)
	(in crate2 depot0)
	(in crate3 depot0)
	(in crate4 depot1)
	(in crate5 depot1)
	(in crate6 depot1)
	(in crate7 depot1)
	(in crate8 depot2)
	(in crate9 depot2)
	(in crate10 depot2)
	(in crate11 depot2)
	(in crate12 depot3)
	(in crate13 depot3)
	(in crate14 depot3)
	(in crate15 depot3)))


)
