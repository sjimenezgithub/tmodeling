(define (problem DLOG-2-3-6)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	s10 - location
	s11 - location
	p0-2 - location
	p0-8 - location
	p1-4 - location
	p2-3 - location
	p2-6 - location
	p2-7 - location
	p3-1 - location
	p3-9 - location
	p4-0 - location
	p5-0 - location
	p6-4 - location
	p6-7 - location
	p6-8 - location
	p6-10 - location
	p6-11 - location
	p7-1 - location
	p7-10 - location
	p8-4 - location
	p8-11 - location
	p9-7 - location
	p10-0 - location
	p11-0 - location
	p11-1 - location
	p11-4 - location
	p11-10 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s9)
	(at truck1 s3)
	(empty truck1)
	(at truck2 s9)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at package1 s4)
	(at package2 s6)
	(at package3 s5)
	(at package4 s6)
	(at package5 s0)
	(at package6 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-8)
	(path p0-8 s0)
	(path s8 p0-8)
	(path p0-8 s8)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s2 p2-7)
	(path p2-7 s2)
	(path s7 p2-7)
	(path p2-7 s7)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-9)
	(path p3-9 s3)
	(path s9 p3-9)
	(path p3-9 s9)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s6 p6-4)
	(path p6-4 s6)
	(path s4 p6-4)
	(path p6-4 s4)
	(path s6 p6-7)
	(path p6-7 s6)
	(path s7 p6-7)
	(path p6-7 s7)
	(path s6 p6-8)
	(path p6-8 s6)
	(path s8 p6-8)
	(path p6-8 s8)
	(path s6 p6-10)
	(path p6-10 s6)
	(path s10 p6-10)
	(path p6-10 s10)
	(path s6 p6-11)
	(path p6-11 s6)
	(path s11 p6-11)
	(path p6-11 s11)
	(path s7 p7-1)
	(path p7-1 s7)
	(path s1 p7-1)
	(path p7-1 s1)
	(path s7 p7-10)
	(path p7-10 s7)
	(path s10 p7-10)
	(path p7-10 s10)
	(path s8 p8-4)
	(path p8-4 s8)
	(path s4 p8-4)
	(path p8-4 s4)
	(path s8 p8-11)
	(path p8-11 s8)
	(path s11 p8-11)
	(path p8-11 s11)
	(path s9 p9-7)
	(path p9-7 s9)
	(path s7 p9-7)
	(path p9-7 s7)
	(path s10 p10-0)
	(path p10-0 s10)
	(path s0 p10-0)
	(path p10-0 s0)
	(path s11 p11-0)
	(path p11-0 s11)
	(path s0 p11-0)
	(path p11-0 s0)
	(path s11 p11-1)
	(path p11-1 s11)
	(path s1 p11-1)
	(path p11-1 s1)
	(path s11 p11-4)
	(path p11-4 s11)
	(path s4 p11-4)
	(path p11-4 s4)
	(path s11 p11-10)
	(path p11-10 s11)
	(path s10 p11-10)
	(path p11-10 s10)
	(link s0 s2)
	(link s2 s0)
	(link s0 s4)
	(link s4 s0)
	(link s0 s7)
	(link s7 s0)
	(link s1 s4)
	(link s4 s1)
	(link s1 s9)
	(link s9 s1)
	(link s2 s3)
	(link s3 s2)
	(link s2 s5)
	(link s5 s2)
	(link s3 s0)
	(link s0 s3)
	(link s3 s8)
	(link s8 s3)
	(link s4 s7)
	(link s7 s4)
	(link s5 s3)
	(link s3 s5)
	(link s5 s4)
	(link s4 s5)
	(link s5 s8)
	(link s8 s5)
	(link s5 s10)
	(link s10 s5)
	(link s6 s4)
	(link s4 s6)
	(link s7 s1)
	(link s1 s7)
	(link s7 s9)
	(link s9 s7)
	(link s7 s11)
	(link s11 s7)
	(link s8 s2)
	(link s2 s8)
	(link s8 s4)
	(link s4 s8)
	(link s8 s7)
	(link s7 s8)
	(link s8 s9)
	(link s9 s8)
	(link s9 s11)
	(link s11 s9)
	(link s10 s0)
	(link s0 s10)
	(link s10 s1)
	(link s1 s10)
	(link s10 s6)
	(link s6 s10)
	(link s10 s8)
	(link s8 s10)
	(link s11 s0)
	(link s0 s11)
	(link s11 s1)
	(link s1 s11)
	(link s11 s3)
	(link s3 s11)
	(link s11 s6)
	(link s6 s11)
)
	(:goal (and
	(at driver1 s11)
	(at truck2 s8)
	(at truck3 s4)
	(at package1 s5)
	(at package2 s0)
	(at package3 s4)
	(at package4 s0)
	(at package6 s5)
	))

)
